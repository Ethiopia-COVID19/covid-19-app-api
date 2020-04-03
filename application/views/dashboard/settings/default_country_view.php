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
            <div class="row clearfix">
               

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
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
                                <?php echo $this->lang->line("Default Country"); ?>
                            </h2>
                        </div>

                        <div class="body">
                            
						<div class="body">
					<?php
					$attributes = array('class' => 'form-horizontal', 'method' => 'post');
					echo form_open(base_url()."dashboard/Settings/default_country/", $attributes);
                     ?>
                        
						<div class="form-group">
							<label for="content_type_id" class="col-sm-3 control-label"><?php echo $this->lang->line("Default Country"); ?></label>
							<div class="col-sm-9">
								<div class="form-line">
									<select class="form-control show-tick" data-live-search="true" id="setting_default_country" name="setting_default_country" required>
										<option selected="selected" disabled><?php echo $this->lang->line("--- Please Select ---"); ?></option>
										<?php
										$json_content = file_get_contents("https://corona.lmao.ninja/countries");
										$content = json_decode($json_content);
										foreach($content as $mydata)
										{
										?>
											<option data-subtext="(<?php echo html_entity_decode($mydata->cases); ?>)" value="<?php echo html_entity_decode($mydata->country); ?>"><?php echo html_entity_decode($mydata->country); ?></option>
											<?php
										}
										?>
									</select>
								</div>
								<small class="col-pink"><?php echo $this->lang->line(""); ?></small>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<button <?php if($_SESSION['user_role_id'] == 4) echo "disabled='disabled'"; ?> type="submit" class="btn <?php echo $this->lang->line("bg-x"); ?> m-t-15 waves-effect"><?php echo $this->lang->line("Update"); ?></button>
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


            </div>
        </div>
    </section>

<?php
$this->load->view('dashboard/common/footer_view');
?>
