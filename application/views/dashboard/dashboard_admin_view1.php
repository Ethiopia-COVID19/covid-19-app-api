<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>



<section class="content">

    <div class="container-fluid">

        <div class="block-header">

            <h2 style="padding-bottom: 7px;"><?php echo $this->lang->line("app_description"); ?></h2>

            

        </div>



        



        <!-- 4 Col Hover Expand Effect -->

        <div class="row clearfix">

            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" >

                <div class="info-box bg-deep-orange hover-zoom-effect">

                    <div class="icon">

                        <i class="material-icons">apps</i>

                    </div>

                    <div class="content">

                        <div class="text"><?php echo $this->lang->line("Categories"); ?></div>

                        <div class="number">2</div>

                    </div>

                </div>

            </div>

            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" onclick="window.location.href='<?php echo base_url()."dashboard/User/users_list"; ?>';">

                <div class="info-box bg-purple hover-zoom-effect">

                    <div class="icon">

                        <i class="material-icons">people</i>

                    </div>

                    <div class="content">

                        <div class="text"><?php echo $this->lang->line("Users"); ?></div>

                        <div class="number"><?php echo $usersCount; ?></div>

                    </div>

                </div>

            </div>

            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" onclick="window.location.href='<?php echo base_url()."dashboard/Content/content_list"; ?>';">

                <div class="info-box bg-pink hover-zoom-effect">

                    <div class="icon">

                        <i class="material-icons">view_list</i>

                    </div>

                    <div class="content">

                        <div class="text"><?php echo $this->lang->line("Content"); ?></div>

                        <div class="number"><?php echo $contentCount; ?></div>

                    </div>

                </div>

            </div>

            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" onclick="window.location.href='<?php echo base_url()."dashboard/Slider/sliders"; ?>';">

                <div class="info-box bg-indigo hover-zoom-effect">

                    <div class="icon">

                        <i class="material-icons">image</i>

                    </div>

                    <div class="content">

                        <div class="text"><?php echo $this->lang->line("Images Slider"); ?></div>

                        <div class="number"><?php echo $slidersCount; ?></div>

                    </div>

                </div>

            </div>

        </div>

        <!-- #END# 4 Col Hover Expand Effect -->



        <div class="row clearfix">

            <!-- User Comments Start -->

            <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">

                <div class="card">

                    <div class="header">

                        <h2>

                            <?php echo $this->lang->line("Users Comments"); ?>

                        </h2>

                    </div>

                    <div class="body">

                        <p style="line-height: 60px;">

                            <a href="<?php echo base_url()."dashboard/User/comments_list/?comment_status=0"; ?>" class="btn bg-grey btn-lg btn-block waves-effect" style="text-align: start;" type="button"><?php echo $this->lang->line("Not Approved Comments"); ?> <span class="badge"><?php echo $notApprovedCommentsCount; ?></span></a>

                            <a href="<?php echo base_url()."dashboard/User/comments_list/?comment_status=1"; ?>" class="btn bg-green btn-lg btn-block waves-effect" style="text-align: start;" type="button"><?php echo $this->lang->line("Approved Comments"); ?> <span class="badge"><?php echo $approvedCommentsCount; ?></span></a>

                            <a href="<?php echo base_url()."dashboard/User/comments_list/?comment_status=2"; ?>" class="btn bg-red btn-lg btn-block waves-effect" style="text-align: start;" type="button"><?php echo $this->lang->line("Removed Comments"); ?> <span class="badge"><?php echo $removedCommentsCount; ?></span></a>

                        </p>

                    </div>

                </div>

            </div>

            <!-- User Comments End -->



            <!-- Latest Activity -->

            <div class="col-lg-9 col-md-6 col-sm-12 col-xs-12">

                <div class="card">

                    <div class="header">

                        <h2><?php echo $this->lang->line("Latest Activities"); ?></h2>

                        <ul class="header-dropdown m-r--5">

                            <li class="dropdown">

                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">

                                    <i class="material-icons">more_vert</i>

                                </a>

                                <ul class="dropdown-menu pull-right">

                                    <li><a href="<?php echo base_url()."dashboard/User/users_activity"; ?>"><?php echo $this->lang->line("Users Activity"); ?></a></li>

                                    <li><a href="<?php echo base_url()."dashboard/User/users_list"; ?>"><?php echo $this->lang->line("Users List"); ?></a></li>

                                </ul>

                            </li>

                        </ul>

                    </div>

                    <div class="body">

                        <div style="height: 190px; overflow-y: scroll; overflow-x: hidden">

                            <div class="table-responsive">

                                <table class="table table-hover dashboard-task-infos">

                                    <thead>

                                    <tr>

                                        <th><?php echo $this->lang->line("Time"); ?></th>

                                        <th><?php echo $this->lang->line("User"); ?></th>

                                        <th><?php echo $this->lang->line("IP"); ?></th>

                                        <th><?php echo $this->lang->line("Activity Description"); ?></th>

                                    </tr>

                                    </thead>

                                    <tbody>

                                    <?php

                                    foreach ($usersActivity as $key) {

                                        ?>

                                        <tr>

                                            <td class="font-light"><?php if ($this->lang->line("date-format-ago") == "default") echo timespan($key->activity_time, now(), 2)." ".$this->lang->line("ago");

                                                elseif($this->lang->line("date-format-ago") == "jdf") echo timespan($key->activity_time, now(), 2)." ".$this->lang->line("ago");

                                                else echo timespan($key->activity_time, now(), 2)." ".$this->lang->line("ago"); ?></td>

                                            <td class="font-light"><a href="<?php echo base_url()."dashboard/User/show_user/$key->user_id" ?>"><?php echo $key->user_username; ?></a></td>

                                            <td class="font-light"><?php if($_SESSION['user_role_id'] == 4) echo $this->lang->line("Hidden"); else echo $key->activity_ip; ?></td>

                                            <td class="font-light"><?php echo $key->activity_desc; ?></td>

                                        </tr>

                                        <?php

                                    }

                                    ?>

                                    </tbody>

                                </table>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

            <!-- #END# Latest Orders -->

        </div>





        <div class="row clearfix">





        </div>



    </div>

</section>

