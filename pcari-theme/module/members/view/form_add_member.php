<?php

// Get post meta for member's page
$memberData = maybe_unserialize(get_post_meta( $postArr->ID, 'member_information', true ));

// Checks if member's data is empty
if( empty( $memberData ) ) {
    $memberData = array(
        'post_title' => '',
        'member_heading' => '',
        'member_position' => '',
        'member_educational_field' => '',
        'member_expertise' => '',
        'member_research_interest' => '',
    );
}

?>

<div class="uk-form uk-form-horizontal">
    <input type="hidden" id="member_extension_nonce" name="member_extension_nonce" value="<?= wp_create_nonce(basename(__FILE__)) ?>">

    <div class="uk-form-row">
        <label class="uk-form-label" for="member_position">Heading</label>
        <div class="uk-form-controls">
            <input type="text" id="member_heading" name="member_heading" placeholder="Ex. Project Leader, Project Staff, Research Fellow, Admin Staff" class="uk-width-2-3" value="<?= $memberData['member_heading'] ?>">
        </div>
    </div>

    <div class="uk-form-row">
        <label class="uk-form-label" for="member_position">Position</label>
        <div class="uk-form-controls">
            <input type="text" id="member_position" name="member_position" placeholder="Ex. Design and Construction Supervisor" class="uk-width-2-3" value="<?= $memberData['member_position'] ?>">
        </div>
    </div>
    <div class="uk-form-row">
        <label class="uk-form-label" for="member_educational_field">Educational Field</label>
        <div class="uk-form-controls">
            <input type="text" id="member_educational_field" name="member_educational_field" placeholder="Ex. Scientist II" class="uk-width-2-3" value="<?= $memberData['member_educational_field'] ?>">
        </div>
    </div>
    <div class="uk-form-row">
        <label class="uk-form-label" for="member_expertise">Expertise</label>
        <div class="uk-form-controls">
            <input type="text" id="member_expertise" name="member_expertise" placeholder="Ex. Advising, Coaching, Decision Making" class="uk-width-2-3" value="<?= $memberData['member_expertise'] ?>">
        </div>
    </div>
    <div class="uk-form-row">
        <label class="uk-form-label" for="member_research_interest">Research Interest</label>
        <div class="uk-form-controls">
            <input type="text" id="member_research_interest" name="member_research_interest" placeholder="Ex. Action Research, Economic Development" class="uk-width-2-3" value="<?= $memberData['member_research_interest'] ?>">
        </div>
    </div>
</div>