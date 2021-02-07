<body>
    <div class="ui centered grid">
        <div class="four wide computer column" style="margin-top: 10%;">
            <form action="<?php echo base_url('admin/login/proses_login/'); ?>" method="post" enctype="multipart/form-data">
                <div class="ui segment">
                    <?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>
                    <div class="ui form">
                        <div class="field">
                            <label>USERNAME</label>
                            <input name="username" placeholder="USERNAME" type="text">
                        </div>
                        <div class="field">
                            <label>PASSWORD</label>
                            <input name="password" placeholder="PASSWORD" type="password">
                        </div>
                    </div>  
                    <br>
                    <button style="width: 100%;" class="ui primary button" type="submit">
                        <i class="sign in alternate icon"></i>
                        LOGIN
                    </button>
                    <br><br>
                </div>
            </form>
        </div>
    </div>
</body>
</html>