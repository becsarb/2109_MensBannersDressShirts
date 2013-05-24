<!--TODO:  TO TURN THIS INTO JSP FILE GET RID OF DOCTYPE, AND TURN ALL PATHS INTO RELATIVES USING ${baseUrlAssets}/dyn_img/${dynImgFolder} -->
<style type="text/css">
    .Mens2013IntroRollovers {
        background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013DS_RolloversSprite.png') no-repeat;
    }

    .Mens2013IntroOverlays {
        background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013DS_OverlaysSprite.png') no-repeat;
    }

	#Mens2013DSMatchOverlay {
		position: absolute;
		top: 127px;
		left: 63px;
	    background: url(${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_SpinBgOverlay.jpg) no-repeat 0px 0px;
		width:616px;
		height:306px;
		z-index: 8000;
	}

	#DSMatchSpinItSlots{
		position: absolute;
	    background: url(${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DSMatchSpinImg.jpg) no-repeat 0px 0px;
		left:321px;
		top:105px;
	    width: 102px;
	    height:200px;
		z-index: 9000;
		cursor: pointer;
	}

	.SpinningImages {
	    background: url(${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DSMatchSpinShirts.jpg) no-repeat 0px 0px;
	    height:237px;
	}

	.slotsFullDescription {
	    background: url(${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DSMatchSpinDescriptions.png) no-repeat 0px 0px;
	    width:207px;
	    height:40px;
	    z-index: 9999;
	}
</style>

<script type="text/javascript">
	var mensCompleteUrl = 'http://www1.bloomingdales.com/shop/mens/the-suit-shop?id=1000177'
	var facebookImage = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_Facebook.jpg';
	var pinterestImage1 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_PinterestShirts1.jpg';	
	var pinterestImage2 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_PinterestShirts2.jpg';
	var activeSlide;
	var mapDomCmArray = [];

	/**
	 * Coremetrics 
	 */
	
	function mapDomCmItem (domElementID, cmLabel){
		this.domElementID = domElementID;
		this.cmLabel = cmLabel;
	}

	function mapDomToCoremetricksLookup(elementID){
		var retValue;
		$.each(mapDomCmArray, function(key, value){
			if (value.domElementID == elementID || '#' + value.domElementID == elementID) {
				retValue = value.cmLabel;
			}
		});
		return retValue;
	}
</script>

<link rel="stylesheet" type="text/css" href="${baseUrlAssets}/dyn_img/${dynImgFolder}/mens2013_dshirtsbannerstyles.css">
<script type="text/javascript" src="${baseUrlAssets}/web20/assets/script/bloomies/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${baseUrlAssets}/dyn_img/${dynImgFolder}/jquery.crellookbooks.js"></script>
<script type="text/javascript" src="${baseUrlAssets}/dyn_img/${dynImgFolder}/mens2013_dshirtsbanner.js"></script>

<div id="Mens2013DressShirtsBanner">

    <div id="Mens2013DSTheFit">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DressShirts_1.jpg" alt="Mens Suit Manual 2013 The Fit" usemap="#DSFitMap" />
        <map id="DSFitMap" name="DSFitMap">
        
            <!-- Non-hoverables, non-linkables -->
            
            <area id="DSTFNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="0,0,23,0,23,28,219,28,219,0,552,0,552,28,714,25,714,0,743,0,743,146,535,147,535,128,422,128,422,147,0,147" alt="Men's Dress Shirts:  The Fit" />

            <!-- Linkables and/or hoverables -->

            <area id="DSTFToSuitManual" class="MensSuitIntroHoverable Mens2013Clickable CoremetricksElement" shape="rect" coords="24,0,158,29" alt="Men's Suit Manual Complete:  The Fit" href="/shop/mens/the-suit-shop?id=1000177"/>
            
            <area id="DSTFFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="161,0,176,23" alt="Men's Dress Shirts Manual:  The Fit Facebook" href="javascript:void(0);"/>

            <area id="DSTFTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="181,0,199,23" alt="Men's Dress Shirts:  The Fit Twitter" href="javascript:void(0);"/>

            <area id="DSTFPinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="201,0,218,23" alt="Men's Dress Shirts:  The Fit Pinterest" href="javascript:void(0);"/>

            <area id="DSTFTopFit" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="586,0,604,23" alt="Men's Dress Shirts:  The Style" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheFit"/>

            <area id="DSTFTopStyle" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="622,0,712,23" alt="Men's Dress Shirts:  The Style" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheStyle"/>

            <area id="DSTFLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="5,222,40,257" alt="Men's Dress Shirts:  The Fit" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DSTFRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="700,222,735,258" alt="Men's Dress Shirts:  Style" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <!-- Overlays -->

            <area id="DSTFSizeGuide" class="Mens2013Clickable Mens2013Overlay CoremetricksElement" shape="rect" coords="425,135,533,146" alt="Men's Suit Manual:  Dress Shirts The Fit" href="javascript:void(0);"/>

            <area id="DSTFSlimFit" class="Mens2013Clickable Mens2013Overlay ClickNonHoverable CoremetricksElement" shape="poly" coords="41,257,81,162,250,162,250,450,31,450,29,285" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_FIT%3DSlim%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DSTFContemporaryFit" class="Mens2013Clickable Mens2013Overlay ClickNonHoverable CoremetricksElement" shape="rect" coords="257,162,475,453" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_FIT%3DContemporary%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DSTFRegularFit" class="Mens2013Clickable Mens2013Overlay ClickNonHoverable CoremetricksElement" shape="poly" coords="694,251,666,163,494,165,484,303,491,452,712,450,717,289" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_FIT%3DRegular%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>
        </map>
    </div>


    <div id="Mens2013DSTheStyle">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DressShirts_2.jpg" alt="Mens Suits 2013 The Style" usemap="#DSStyleMap" />
        <map id="DSStyleMap" name="DSStyleMap">
            <!-- Non-hoverables, non-linkables -->
            <area id="DSStyleNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="0,0,23,0,23,30,221,30,221,0,553,0,553,30,715,30,715,0,743,0,743,120,425,120,425,101,316,101,316,120,0,120" alt="Men's Dress Shirts:  The Style" />

            <area id="DSStyleNL2" class="MensSuitIntroNonHoverable" shape="poly" coords="0,126,316,126,316,138,425,138,425,126,743,126,743,217,698,217,698,260,743,260,743,366,0,366,0,261,43,261,43,218,0,218" alt="Men's Dress Shirts:  The Style" />

            <!-- Linkables and/or hoverables -->


            <area id="DSStyleToSuitManual" class="MensSuitIntroHoverable Mens2013Clickable CoremetricksElement" shape="rect" coords="22,0,158,29" alt="Men's Suit Manual Complete:  The Fit" href="/shop/mens/the-suit-shop?id=1000177"/>
            
            <area id="DSStyleFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="161,0,176,23" alt="Men's Dress Shirts:  The Fit Facebook" href="javascript:void(0);"/>

            <area id="DSStyleTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="181,0,199,23" alt="Men's Dress Shirts:  The Fit Twitter" href="javascript:void(0);"/>

            <area id="DSStylePinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="201,0,218,23" alt="Men's Dress Shirts:  The Fit Pinterest" href="javascript:void(0);"/>

            <area id="DSStyleTopFit" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="586,0,604,23" alt="Men's Dress Shirts:  Fit" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheFit"/>

            <area id="DSStyleTopStyle" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="622,0,712,23" alt="Men's Dress Shirts:  Style" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheStyle"/>

            <area id="DSStyleLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="5,222,40,257" alt="Men's Dress Shirts:  The Fit" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DSStyleRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="700,222,735,258" alt="Men's Dress Shirts:  The Fit" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DSMatchSpinIt" class="MensSuitIntroHoverable ClickNonHoverable Mens2013SlotMachine CoremetricksElement" shape="rect" coords="321, 106, 421,134" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

            <area id="DSMatchStripe" class="MensSuitIntroHoverable Mens2013Clickable ClickNonHoverable CoremetricksElement Mens2013ShopLink" shape="rect" coords="63,127,266,442" alt="Men's Suit Manual:  Dress Shirts Match" href="#!fn=MENS_DRESS_SHIRT_TYPE%3DStripe%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DSMatchSolid" class="MensSuitIntroHoverable Mens2013Clickable ClickNonHoverable CoremetricksElement Mens2013ShopLink" shape="rect" coords="273,142,470,438" alt="Men's Suit Manual:  Dress Shirts Match" href="#!fn=MENS_DRESS_SHIRT_TYPE%3DSolid%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DSMatchCheck" class="MensSuitIntroHoverable Mens2013Clickable ClickNonHoverable CoremetricksElement Mens2013ShopLink" shape="rect" coords="485,127,680,442" alt="Men's Suit Manual:  Dress Shirts Match" href="#!fn=MENS_DRESS_SHIRT_TYPE%3DCheck%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

        </map>
    </div>
    
    <div id="slot_machine" class="Mens2013SlotMachine">
		<div id="Mens2013DSMatchOverlay"></div>
		<div id="DSMatchSpinItSlots" ></div>
		<div id="SlotsContainer">
				<div class="slots"  id="slots_a"></div>
				<div class="slots"  id="slots_b"></div>
				<div class="slots"  id="slots_c"></div>
		</div>
		<a href="#!fn=MENS_DRESS_SHIRT_TYPE%3DStripe%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"><div id="SlotsDescriptionTitleA" class="slotsFullDescription"></div></a>
		<a href="#!fn=MENS_DRESS_SHIRT_TYPE%3DSolid%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"><div id="SlotsDescriptionTitleB" class="slotsFullDescription"></div></a>
		<a href="#!fn=MENS_DRESS_SHIRT_TYPE%3DCheck%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"><div id="SlotsDescriptionTitleC" class="slotsFullDescription"></div></a>
		<div id="SlotsFullDescriptionA"></div>
		<div id="SlotsFullDescriptionB"></div>
		<div id="SlotsFullDescriptionC"></div>
	</div>
</div>

