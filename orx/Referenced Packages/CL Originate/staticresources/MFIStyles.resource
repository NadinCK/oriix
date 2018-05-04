	.strikethrough {
		text-decoration:line-through;
		background-color:#C0C0C0;
	}
	.selected {
		background-color:#E3F3FF;
	}

	.tableCenter {
		text-align:center;
	}
	.tableRight {
		text-align:right;
	}

	.tableLeft {
		text-align:left;
	}
	
	.companyManagement .menuButtonButton span{
        background-image: url('/img/icon/home16.png');
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    }
	.applicationSetup .menuButtonButton span{
        background-image: url('/img/icon/profile16.png');
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    } 
	.creditSetup .menuButtonButton span{
        background-image: url('/img/icon/bank16.png');
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    } 
	.productManagement .menuButtonButton span{
        background-image: url('/img/icon/box16.png');
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    }	
    .dealRoomSetup .menuButtonButton span{
        background-image: url('/img/icon/bank16.png');
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    } 
	.taskListSetup .menuButtonButton span{
        background-image: url('/img/icon/bank16.png');
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    }
	.conversionSetup .menuButtonButton span{
        background-image: url('/img/icon/custom51_100/compass16.png'); 
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    }  
    .feeSetup .menuButtonButton span{
        background-image: url('/img/icon/cash16.png');
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    }
    .covenantSetup .menuButtonButton span{
        background-image: url('/img/icon/bank16.png');
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    } 
    .policySetup .menuButtonButton span{
        background-image: url('/img/icon/sack16.png');
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    } 
    .changeMemo .menuButtonButton span{
        background-image: url('/img/icon/service_contracts16.png');
        background-repeat: no-repeat;
        padding-left: 20px;  /* width of the image plus a little extra padding */
        display: block;  /* may not need this, but I've found I do */
    }

    .companyManagement,
	.applicationSetup,
	.creditSetup,
	.productManagement,
	.dealRoomSetup,
	.taskListSetup,
	.conversionSetup,
    .feeSetup,
    .covenantSetup,
    .policySetup,
    .changeMemo{
        background:transparent !important;
    }
	
	.companyManagement .menuButton,
	.applicationSetup .menuButton,
    .creditSetup .menuButton,
	.productManagement .menuButton,
	.dealRoomSetup .menuButton ,
	.taskListSetup .menuButton,
	.conversionSetup .menuButton,
    .feeSetup .menuButton,
    .covenantSetup .menuButton,
    .policySetup .menuButton,
    .changeMemo .menuButton{
        border: 2px solid white !important;
        background: #1797C0 !important;
        height: 27px !important;
        width: 212px !important;
        border-radius:5px !important;
    }
	
	.companyManagement .quickloanmenu,
	.applicationSetup .quickloanmenu,
    .creditSetup .quickloanmenu,
	.productManagement .quickloanmenu,
	.dealRoomSetup .quickloanmenu ,
	.taskListSetup .quickloanmenu,
	.conversionSetup .quickloanmenu,
    .feeSetup .quickloanmenu,
    .covenantSetup .quickloanmenu,
    .policySetup .quickloanmenu,
    .changeMemo .quickloanmenu{
        width: 210px !important;
        margin-left: auto !important;       
    }
    
	.companyManagement,
	.applicationSetup,
    .creditSetup ,
	.productManagement,
	.dealRoomSetup,
	.taskListSetup,
	.conversionSetup,
    .feeSetup,
    .covenantSetup,
    .policySetup,
    .changeMemo{
        background:transparent !important; 
        position:relative !important;
        z-index:0 !important;
    }
  
	.mfiflexBlock {
        background: rgb(255,255,255); /* Old browsers */
        background: -moz-linear-gradient(top, rgba(255,255,255,1) 0%, rgba(161,219,255,1) 100%); /* FF3.6+ */
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(255,255,255,1)), color-stop(100%,rgba(161,219,255,1))); /* Chrome,Safari4+ */
        background: -webkit-linear-gradient(top, rgba(255,255,255,1) 0%,rgba(161,219,255,1) 100%); /* Chrome10+,Safari5.1+ */
        background: -o-linear-gradient(top, rgba(255,255,255,1) 0%,rgba(161,219,255,1) 100%); /* Opera 11.10+ */
        background: -ms-linear-gradient(top, rgba(255,255,255,1) 0%,rgba(161,219,255,1) 100%); /* IE10+ */
        background: linear-gradient(to bottom, rgba(255,255,255,1) 0%,rgba(161,219,255,1) 100%); /* W3C */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#a1dbff',GradientType=0 ); /* IE6-9 */
       -webkit-box-shadow: 0 1px 5px #727272 !important;
        -moz-box-shadow: 0 1px 5px #727272 !important;
        border-top: 1px solid #1797c0 !important;
        border-radius: 1px !important;
        border:1px solid #1797c0;
        margin-top:10px;
        margin-bottom:10px;
        background-color:#f8f8f8;

    }
    .mfiflexBlockHeading{
        width:100%;
        height:31px;
        border: 1px solid #dbdbdb;
        border-top: 0;
        border-right: 0;
        border-left: 0;
        background:#fff;
        padding-top:4px;

    }
    .heading{
        color:#000;
        font-size:1.2em;
        padding-left:2px;
    }
    .mfiflexBlockHeading h1{
        background-image: url('/img/icon/custom51_100/gears24.png');
        background-repeat: no-repeat;
        display: block;
        padding-left: 30px;
        padding-top: 5px;
        height: 30px;
    } 
     
