Rocky@20111216:

双摄像头模式
front gc0308
back  ov5640

front的 preivew 和capture 效果不一致。但是应该是front摄像头的效果


fiber_pack配置如下：

[csi1_para]
csi_used            = 1
csi_mode            = 0
csi_dev_qty         = 2
csi_stby_mode       = 0

csi_mname           = "ov5640"
csi_twi_id          = 0
csi_twi_addr        = 0x78
csi_if              = 0
csi_vflip           = 0
csi_hflip           = 1
csi_iovdd           = "axp22_eldo3"
csi_avdd            = "axp22_dldo4"
csi_dvdd            = "axp22_eldo2"
csi_vol_iovdd       = 2800
csi_vol_avdd        = 2800
csi_vol_dvdd        = 1500
csi_flash_pol       = 1

csi_mname_b         = "gc0308"
csi_twi_id_b        = 0
csi_twi_addr_b      = 0x42
csi_if_b            = 0
csi_vflip_b         = 1
csi_hflip_b         = 0
csi_iovdd_b         = "axp22_eldo3"
csi_avdd_b          = "axp22_dldo4"
csi_dvdd_b          = "axp22_eldo2"
csi_vol_iovdd_b     = 2800
csi_vol_avdd_b      = 2800
csi_vol_dvdd_b      = 1800
csi_flash_pol_b     = 1

csi_pck             = port:PE00<2><default><default><default>
csi_mck             = port:PE01<2><default><default><default>
csi_hsync           = port:PE02<2><default><default><default>
csi_vsync           = port:PE03<2><default><default><default>
csi_d0              =
csi_d1              =
csi_d2              =
csi_d3              =
csi_d4              = port:PE08<2><default><default><default>
csi_d5              = port:PE09<2><default><default><default>
csi_d6              = port:PE10<2><default><default><default>
csi_d7              = port:PE11<2><default><default><default>
csi_d8              = port:PE12<2><default><default><default>
csi_d9              = port:PE13<2><default><default><default>
csi_d10             = port:PE14<2><default><default><default>
csi_d11             = port:PE15<2><default><default><default>
csi_reset           = port:PE06<1><default><default><0>
csi_power_en        =
csi_stby            = port:PE05<1><default><default><1>
csi_flash           =
csi_af_en           =
csi_reset_b         = port:PE06<1><default><default><0>
csi_power_en_b      =
csi_stby_b          = port:PE07<1><default><default><1>
csi_flash_b         =
csi_af_en_b         =