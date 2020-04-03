<?php defined('BASEPATH') OR exit('No direct script access allowed');

$this->load->view('dashboard/common/head_view');

$this->load->view('dashboard/common/header_view');

//Show relevant sidebar

if ($_SESSION['user_type'] == 1)

    $this->load->view('dashboard/common/sidebar_view');

elseif ($_SESSION['user_type'] == 2)

    $this->load->view('dashboard/common/sidebar_user_view');

?>



<section class="content">

    <div class="container-fluid">

        <!--<div class="block-header">

                <h2>

                    <?php echo $this->lang->line("Edit Content"); ?>

                </h2>

            </div>-->

        <!-- Basic Examples -->

        <div class="row clearfix">

            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">

                <!-- Alert after process start -->

                <?php

                $msg = $this->session->flashdata('msg');

                $msgType = $this->session->flashdata('msgType');

                if (isset($msg))

                {

                    ?>

                    <div class="alert alert-<?php echo $msgType; ?> alert-dismissible">

                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

                        <?php echo $msg; ?>

                    </div>

                    <?php

                }

                ?>

                <!-- ./Alert after process end -->

                <div class="card">

                    <div class="header">

                        <h2>

                            <?php echo $this->lang->line("Edit Content"); ?>

                        </h2>

                        <ul class="header-dropdown m-r--5">

                            <li class="dropdown">

                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">

                                    <i class="material-icons">more_vert</i>

                                </a>

                                <ul class="dropdown-menu pull-right">

                                    <li><a href="<?php echo base_url()."dashboard/Dashboard"; ?>"><?php echo $this->lang->line("Dashboard"); ?></a></li>

                                    <li><a href="<?php echo base_url()."dashboard/Content/content_list"; ?>"><?php echo $this->lang->line("Content List"); ?></a></li>

                                </ul>

                            </li>

                        </ul>

                    </div>

                    <div class="body">

                        <?php

                        $attributes = array('class' => 'form-horizontal', 'method' => 'post');

                        echo form_open_multipart(base_url()."dashboard/Content/edit_content/", $attributes);

                        //form_open_multipart//For Upload

                        ?>



                        <div class="form-group">

                            <label for="content_title" class="col-sm-2 control-label"><?php echo $this->lang->line("Title"); ?> *</label>

                            <div class="col-sm-10">

                                <div class="form-line">

                                    <input type="text" class="form-control" name="content_title" value="<?php echo $contentContent->content_title; ?>" required>

                                </div>

                            </div>

                        </div>



                        <div class="form-group">

                            <label for="content_description" class="col-sm-2 control-label"><?php echo $this->lang->line("Description"); ?> *</label>

                            <div class="col-sm-10">

                                <div class="">

                                    <textarea class="form-control" name="content_description" id="content_description" required><?php echo $contentContent->content_description; ?></textarea>

                                </div>

                            </div>

                        </div>



                        <div class="form-group">

                            <label for="content_category_id" class="col-sm-2 control-label"><?php echo $this->lang->line("Category"); ?> *</label>

                            <div class="col-sm-10">

                                <div class="form-line">

                                    <select class="form-control show-tick" id="content_category_id" name="content_category_id" data-live-search="true" data-show-subtext="true" required>

                                        <option selected="selected" disabled><?php echo $this->lang->line("--- Please Select ---"); ?></option>

                                        <?php

                                        foreach ($fetchCategories as $key) {

                                            $category_id_selected1 = "";

                                            if ($contentContent->content_category_id == $key->category_id) $category_id_selected1 = "selected='selected'";

                                            ?>

                                            <option data-divider="true"></option>

                                            <option <?php echo $category_id_selected1; ?> value="<?php echo $key->category_id ?>">◼ <?php echo $key->category_title; ?></option>

                                            <?php

                                            //To get sub category

                                            $subCategory = $this->db->get_where('category_table', array('category_parent_id' => $key->category_id))->result();

                                            foreach($subCategory as $sKey)

                                            {

                                                $category_id_selected2 = "";

                                                if ($contentContent->content_category_id == $sKey->category_id) $category_id_selected2 = "selected='selected'";

                                                echo "<option data-subtext='($key->category_title)' $category_id_selected2 value='$sKey->category_id'>&nbsp;&nbsp;&nbsp;&nbsp;◾&nbsp;$sKey->category_title</option>";

                                                //To get sub sub category

                                                $subSubCategory = $this->db->get_where('category_table', array('category_parent_id' => $sKey->category_id))->result();

                                                foreach($subSubCategory as $ssKey)

                                                {

                                                    $category_id_selected3 = "";

                                                    if ($contentContent->content_category_id == $ssKey->category_id) $category_id_selected3 = "selected='selected'";

                                                    echo "<option data-subtext='($sKey->category_title)' $category_id_selected3 class='subSubCategoryDropDown' value='$ssKey->category_id'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;◽&nbsp;$ssKey->category_title</option>";

                                                }

                                            }

                                        }

                                        ?>

                                    </select>

                                </div>

                            </div>

                        </div>







                        <div class="form-group">

                            <label for="content_type_id" class="col-sm-2 control-label"><?php echo $this->lang->line("Content Type"); ?> *</label>

                            <div class="col-sm-10">

                                <div class="form-line">

                                    <select class="form-control show-tick" id="content_type_id" name="content_type_id" required>

                                        <?php

                                        foreach ($contentType as $key) {

                                            $content_type_id_selected = "";

                                            if($key->content_type_id == $contentContent->content_type_id) $content_type_id_selected = "selected='selected'";

                                            ?>

                                            <option <?php echo $content_type_id_selected; ?> data-subtext="(<?php echo $key->content_type_description ?>)" value="<?php echo $key->content_type_id; ?>"><?php echo $key->content_type_title ?></option>

                                            <?php

                                        }

                                        ?>

                                    </select>

                                </div>

                                <small class="col-pink"><?php echo $this->lang->line(""); ?></small>

                            </div>

                        </div>



 <div class="form-group">

                            <label for="content_type_id" class="col-sm-2 control-label"><?php echo $this->lang->line("language"); ?> *</label>

                            <div class="col-sm-10">

                                <div class="form-line">

                                    <select class="form-control show-tick" id="Id" name="Id" required>

                                        <?php

                                        foreach ($language as $key) {

                                            $content_language_id_selected = "";

                                            if($key->Id == $contentContent->content_language_id) $content_language_id_selected = "selected='selected'";

                                            ?>

                                            <option <?php echo $content_language_id_selected; ?> value="<?php echo $key->Id; ?>"><?php echo $key->language_types ?></option>

                                            <?php

                                        }

                                        ?>

                                    </select>

                                </div>

                                <small class="col-pink"><?php echo $this->lang->line(""); ?></small>

                            </div>

                        </div>




                        <div class="form-group">

                            <label for="content_player_type_id" class="col-sm-2 control-label"><?php echo $this->lang->line("Video Player"); ?> *</label>

                            <div class="col-sm-10">

                                <div class="form-line">

                                    <select class="form-control show-tick" id="content_player_type_id" name="content_player_type_id" required>

                                        <?php

                                        foreach ($playerType as $key) {

                                            $content_player_type_id_selected = "";

                                            if($key->player_type_id == $contentContent->content_player_type_id) $content_player_type_id_selected = "selected='selected'";

                                            ?>

                                            <option <?php echo $content_player_type_id_selected; ?> data-subtext="(<?php echo $key->player_type_description ?>)" value="<?php echo $key->player_type_id; ?>"><?php echo $key->player_type_title ?></option>

                                            <?php

                                        }

                                        ?>

                                    </select>

                                </div>

                                <small class="col-pink"><?php echo $this->lang->line(""); ?></small>

                            </div>

                        </div>





                        <div class="form-group">

                            <label for="content_url" class="col-sm-2 control-label"><?php echo $this->lang->line("Video URL / ID"); ?> *</label>

                            <div class="col-sm-10">

                                <div class="form-line">

                                    <input type="text" style="direction: ltr" class="form-control" name="content_url" placeholder="http://www.YourDomain.com" value="<?php echo $contentContent->content_url; ?>" required>

                                </div>

                                <small class="col-pink">Direct Video URL or YouTube and Vimeo Video ID</small>

                            </div>

                        </div>



                        <div style='display:none;' id='orientation'>

                            <div class="form-group">

                                        <label for="content_orientation" class="col-sm-2 control-label"><?php echo $this->lang->line("Orientation"); ?> *</label>

                                        <div class="col-sm-10">

                                            <div class="form-line">

                                                <select class="form-control show-tick" id="content_orientation" name="content_orientation" required>

                                                    <?php

                            $content_orientation_selected1 = $content_orientation_selected2 = $content_orientation_selected3 = "";

                            if($contentContent->content_orientation == 1) $content_orientation_selected1 = "selected='selected'";

                            if($contentContent->content_orientation == 2) $content_orientation_selected2 = "selected='selected'";

                            if($contentContent->content_orientation == 3) $content_orientation_selected3 = "selected='selected'";

                            ?>

                                                    <option <?php echo $content_orientation_selected1; ?> value="1"><?php echo $this->lang->line("It does not matter"); ?></option>

                                                    <option <?php echo $content_orientation_selected2; ?> data-subtext="(Portrait)" value="2"><?php echo $this->lang->line("Portrait"); ?></option>

                                                    <option <?php echo $content_orientation_selected3; ?> data-subtext="(Landscape)" value="3"><?php echo $this->lang->line("Landscape"); ?></option>

                                                </select>

                                            </div>

                                            <small class="col-pink"><?php echo $this->lang->line("Suitable for display on a mobile phone vertically or horizontally."); ?></small>

                                        </div>

                            </div>

                        </div>



                        <div class="form-group">

                            <label for="content_duration" class="col-sm-2 control-label"><?php echo $this->lang->line("Duration"); ?> *</label>

                            <div class="col-sm-10">

                                <div class="form-line">

                                    <input type="text" style="direction: ltr" class="form-control" name="content_duration" placeholder="02:15" value="<?php echo $contentContent->content_duration; ?>" required>

                                </div>

                            </div>

                        </div>



                        <!--<div class="form-group">

                                    <label for="content_access" class="col-sm-2 control-label"><?php echo $this->lang->line("Access to content"); ?> *</label>

                                    <div class="col-sm-10">

                                        <div class="form-line">

                                            <select class="form-control show-tick" id="content_access" name="content_access" required>

                                                <?php

                        $content_access_selected1 = $content_access_selected2 = "";

                        if($contentContent->content_access == 1) $content_access_selected1 = "selected='selected'";

                        if($contentContent->content_access == 2) $content_access_selected2 = "selected='selected'";

                        ?>

                                                <option <?php echo $content_access_selected1; ?> value="1"><?php echo $this->lang->line("Indirect Access"); ?></option>

                                                <option <?php echo $content_access_selected2; ?> value="2"><?php echo $this->lang->line("Direct Access"); ?></option>

                                            </select>

                                        </div>

                                    </div>

                                </div>-->







                        <div class="form-group">

                            <label for="content_image" class="col-sm-2 control-label"><?php echo $this->lang->line("Cover Image"); ?></label>

                            <div class="col-sm-10">

                                <div class="form-line">

                                    <input type="file" name="content_image" multiple>

                                </div>

                            </div>

                        </div>









                                <div class="form-group">

                                    <div class="col-sm-offset-2 col-sm-10">

                                        <input type="hidden" class="form-control" name="content_user_id" value="<?php echo $contentContent->content_user_id; ?>" readonly>

                                        <input type="hidden" class="form-control" name="content_featured" value="" readonly>

                                        <input type="hidden" class="form-control" name="content_special" value="" readonly>

                                        <input type="hidden" class="form-control" name="content_status" value="" readonly>

                                        <input type="hidden" class="form-control" name="content_order" value="1" readonly>

                                        <input type="hidden" class="form-control" name="content_access" value="1" readonly>

                                        <input type="hidden" class="form-control" name="content_user_role_id" value="5" readonly>

                                        <input type="hidden" class="form-control" name="content_cached" value="1" readonly>

                                        <input type="hidden" name="content_id" value="<?php echo $contentContent->content_id; ?>" readonly="readonly" required>

                                        <input type="hidden" name="content_old_image" value="<?php echo $contentContent->content_image; ?>" readonly="readonly" required>

                                        <button <?php if($_SESSION['user_role_id'] == 4 OR $_SESSION['user_role_id'] == 7) echo "disabled='disabled'"; ?> type="submit" class="btn <?php echo $this->lang->line("bg-x"); ?> m-t-15 waves-effect"><?php echo $this->lang->line("Edit Content"); ?></button>

                                    </div>

                                </div>

                            <?php

                            //Demo alert

                            if($_SESSION['user_role_id'] == 4 OR $_SESSION['user_role_id'] == 7) { ?>

                                <div class="alert alert-warning alert-dismissible" role="alert">

                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                                    <?php echo $this->lang->line("Add / Edit / Remove are disable on demo."); ?>

                                </div>

                            <?php } ?>

                            </form>

                        </div>

                    </div>

                </div>

            </div>

            <!-- #END# Basic Examples -->

        </div>

    </section>



<!-- TinyMCE -->

<script src="<?php echo base_url()."assets/dashboard/plugins/tinymce/tinymce.js"; ?>"></script>

<?php

$this->load->view('dashboard/common/footer_view');

?>

<script>

    tinymce.init({

        selector: '#content_description',

        height: 250,

        theme: 'modern',

        directionality: "<?php echo $this->lang->line('app_direction'); ?>",

        plugins: [

            "advlist autolink lists link image charmap print preview anchor",

            "searchreplace visualblocks code fullscreen",

            "insertdatetime media table contextmenu paste wordcount"

        ],

        toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist | link image",

        setup : function(ed)

        {

            ed.on('init', function()

            {

                this.getDoc().body.style.fontSize = '13px';

                this.getDoc().body.style.fontFamily = 'Tahoma';

            });

        },



    });

</script>



<!-- Hide Div -->

<script>

    $('#content_type_id').on('change', function () {

        if (this.value == '1') {

            $("#video").show();

            $("#url").show();

            $("#orientation").hide();

            $("#product").hide();

            $('#selected_name').html('<?php echo $this->lang->line("Video URL / ID"); ?>');

            $('#selected_url_guide').html('<?php echo $this->lang->line("Direct Video URL or YouTube and Vimeo Video ID"); ?>');

        }

        else if (this.value == '2') {

            $("#video").show();

            $("#url").show();

            $("#orientation").hide();

            $("#product").hide();

            $('#selected_name').html('Music URL');

            $('#selected_url_guide').html('');

        }

        else if (this.value == '3') {

            $("#video").hide();

            $("#url").show();

            $("#orientation").show();

            $("#product").hide();

            $('#selected_name').html('Game URL');

            $('#selected_url_guide').html('<?php echo $this->lang->line("Direct HTML5 Games URL"); ?>');

        }

        else if (this.value == '5') {

            $("#video").hide();

            $("#url").show();

            $("#orientation").hide();

            $("#product").hide();

            $('#selected_name').html('File URL');

            $('#selected_url_guide').html('');

        }

        else if (this.value == '6') {

            $("#video").hide();

            $("#url").show();

            $("#orientation").hide();

            $("#product").hide();

            $('#selected_name').html('Link URL');

            $('#selected_url_guide').html('');



        }else if (this.value == '7') {

            $("#video").hide();

            $("#url").show();

            $("#orientation").hide();

            $("#product").show();

            $('#selected_name').html('Link URL');

            $('#selected_url_guide').html('');

        }else {

            $("#video").hide();

            $("#url").hide();

            $("#orientation").hide();

            $("#product").hide();

            $('#selected_name').html('Content URL');

            $('#selected_url_guide').html('');

        }

    });

</script>