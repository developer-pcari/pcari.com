<?php

global $post;

// Args for getting the members data
$members_args = array(
    'post_type' => 'pcari_members',
    'post_status' => 'publish',
    'nopaging' => true,
    'order' => 'ASC'
);

// Query members data using the given args
$members_query = new WP_Query( $members_args );

// Checks if the query's variable have post/s
if( $members_query->have_posts() ):
    $index = 1;
    $renderContent .= '<div id="all-members-wrap" class="all-members-wrap">';

    while( $members_query->have_posts() ): $members_query->the_post();

        // Gets the meta data of the post
        $memberPostData = maybe_unserialize( get_post_meta( $post->ID, 'member_information', true ) );

        $member_description = $post->post_content;
        $member_link = get_the_permalink($post->ID);
        $member_heading = $memberPostData['member_heading'] ? $memberPostData['member_heading'] : '';
        $member_name = $memberPostData['member_name'] ? $memberPostData['member_name'] : '';
        $member_position = $memberPostData['member_position'] ? $memberPostData['member_position'] : '';
        $member_educational_field = $memberPostData['member_educational_field'] ? $memberPostData['member_educational_field'] : '';
        $member_expertise = $memberPostData['member_expertise'] ? $memberPostData['member_expertise'] : '';
        $member_research_interest = $memberPostData['member_research_interest'] ? $memberPostData['member_research_interest'] : '';

        if( has_post_thumbnail( $post->ID ) ):
            $member_photo = '<img src="' . get_the_post_thumbnail_url( $post->ID ) . '" alt="' . $member_name . ' Photo">';
        else:
            $member_photo = 'no photo';
        endif;

        $renderContent .= '
            <div class="member-item member-' . $post->post_name . '">
                <div class="member-heading">
                    <span>' . $member_heading . '</span>
                </div>
                <a href="' . $member_link . '" class="member-img">' . $member_photo . '</a>
                <div class="member-info">
                    <div class="member-name">
                        <a href="' . $member_link . '">' . $member_name . '</a>
                    </div>
                    <div class="member-divider-label">Bio:</div>
                    <div class="member-position">' . $member_position . '</div>
                    <div class="member-educational-field">' . $member_educational_field . '</div>
                    <div class="member-expertise">' . $member_expertise . '</div>
                    <div class="member-research_interest">' . $member_research_interest . '</div>
                </div>
            </div>
        ';

        $index++;
    endwhile;

    $renderContent .= '</div>';
endif;

wp_reset_postdata();
