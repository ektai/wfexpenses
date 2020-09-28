<?php ?>

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Add New Account</h1>
    </div>

    <div class="row">

        <div class="col-xl-12 col-lg-12">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Create a new Account</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body" style="">
                    <form action="<?php echo $this->createUrl('/account/create');?>" method="post">
                        <div class="form-group">
                            <div class="form-label">
                                <label>Account Name</label>
                                <input minlength="1" maxlength="25" name="accountName" type="text" id="accountName" class="form-control" placeholder="Account name" required="required" >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label">
                                <label>Current Balance</label>
                                <input name="accountFunds" type="text" id="accountFunds" class="form-control" placeholder="Current Balance">
                            </div>
                        </div>
                        <input class="btn btn-primary btn-block"  value="Create Account" type="submit"/>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

