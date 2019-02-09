<?php

global $post;

$renderContent .= '<div id="single-member-wrap" class="single-member-wrap">';

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
            <div class="member-position w-icon"><i class="fa fa-fw fa-certificate"></i>' . $member_position . '</div>
            <div class="member-educational-field w-icon"><i class="fa fa-fw fa-school"></i>' . $member_educational_field . '</div>
            <div class="member-expertise w-icon"><i class="fa fa-fw fa-bullseye"></i>' . $member_expertise . '</div>
            <div class="member-research_interest w-icon"><i class="fa fa-fw fa-book-open"></i>' . $member_research_interest . '</div>
            <div class="member-divider-label">Bio</div>
            <div class="member-description">' . $member_description . '</div>
        </div>
    </div>
';

$renderContent .= '</div>';