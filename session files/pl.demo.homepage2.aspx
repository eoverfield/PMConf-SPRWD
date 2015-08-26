<%@Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage, Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="PageFieldFieldValue" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="Publishing" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="PageFieldRichImageField" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="PageFieldTextField" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register TagPrefix="spsswc" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register TagPrefix="a2e8ead9d" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register TagPrefix="PageFieldRichHtmlField" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<asp:Content runat="server" ContentPlaceHolderID="PlaceHolderPageTitle">
    <SharePoint:ProjectProperty Property="Title" runat="server">
    </SharePoint:ProjectProperty>


    <PageFieldFieldValue:FieldValue FieldName="fa564e0f-0c70-4ab9-b863-0177e6ddd247" runat="server">
    </PageFieldFieldValue:FieldValue>

</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="PlaceHolderAdditionalPageHead">



    <Publishing:EditModePanel runat="server" id="editmodestyles">
        <SharePoint:CssRegistration name="&lt;% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %&gt;" After="&lt;% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %&gt;" runat="server">
        </SharePoint:CssRegistration>
    </Publishing:EditModePanel>

	<script>
		document.documentElement.className += " pm-homepage";
	</script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="PlaceHolderMain">



    <Publishing:EditModePanel runat="server" CssClass="edit-mode-panel" GroupingText="Edit Panel Fields">

        <!--banner image-->

        <PageFieldRichImageField:RichImageField FieldName="3de94b06-4120-41a5-b907-88773e493458" runat="server" />

        <!--Company-->

        <PageFieldTextField:TextField FieldName="038d1503-4629-40f6-adaf-b47d1ab2d4fe" runat="server" InputFieldLabel="Head Line Title" />

        <!--ByLine-->

        <PageFieldTextField:TextField FieldName="d3429cc9-adc4-439b-84a8-5679070f84cb" runat="server" InputFieldLabel="Head Line Byline" />

    </Publishing:EditModePanel>



    <Publishing:EditModePanel runat="server" PageDisplayMode="Display" SuppressTag="true">
        <div class="row">
            <div class="col-md-12 hero">
                <!-- hero -->
                <div class="hero-image-container">

                    <SharePointWebControls:FieldValue FieldName="3de94b06-4120-41a5-b907-88773e493458" runat="server" />
                </div>
            </div>
        </div>

        <!-- headline -->
        <div class="row">
            <div class="col-md-12">
                <div class="headline">
                    <h2>

<SharePointWebControls:FieldValue FieldName="038d1503-4629-40f6-adaf-b47d1ab2d4fe" runat="server" />
</h2>
                    <h4>

<SharePointWebControls:FieldValue FieldName="d3429cc9-adc4-439b-84a8-5679070f84cb" runat="server" />
</h4>
                </div>
            </div>
        </div>
        <!-- ENDS headline -->

    </Publishing:EditModePanel>

    <!-- community list -->
    <div class="row">
        <div class="col-md-12 community-list section">
            <h2 class="heading">Communities
</h2>

            <!--CBS webpart from snippet gallery to pull all demo property content type pages, had to udpate contenttype to contentTypeId:-->



            <spsswc:ContentBySearchWebPart runat="server" AlwaysRenderOnServer="False" ResultType="" DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;Default&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;sitesearch://webroot&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;8413cd39-2156-4e00-b54d-11efd9abdb89&quot;,&quot;SourceName&quot;:&quot;Local SharePoint Results&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;path:\&quot;http://sp2013demo/sites/demo-masterpage\&quot;  (IsDocument:\&quot;True\&quot; OR contentclass:\&quot;STS_ListItem\&quot;) ContentTypeId:0x010100C568DB52D9D0A14D9B2FDCC96666E9F2007948130EC3DB064584E219954237AF390017C7A085B0CE7E49B0EEC84F0069C0F9*&quot;,&quot;FallbackSort&quot;:[],&quot;FallbackSortJson&quot;:&quot;[]&quot;,&quot;RankRules&quot;:[],&quot;RankRulesJson&quot;:&quot;[]&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:false,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:true,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:false,&quot;Properties&quot;:{&quot;TryCache&quot;:true,&quot;Scope&quot;:&quot;{Site.URL}&quot;,&quot;UpdateLinksForCatalogItems&quot;:true,&quot;EnableStacking&quot;:true,&quot;ListId&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;},&quot;PropertiesJson&quot;:&quot;{\&quot;TryCache\&quot;:true,\&quot;Scope\&quot;:\&quot;{Site.URL}\&quot;,\&quot;UpdateLinksForCatalogItems\&quot;:true,\&quot;EnableStacking\&quot;:true,\&quot;ListId\&quot;:\&quot;00000000-0000-0000-0000-000000000000\&quot;}&quot;,&quot;ClientType&quot;:&quot;ContentSearchRegular&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}" BypassResultTypes="True" ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/demo_Item_Communities.js" GroupTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Group_Content.js" ResultsPerPage="3" SelectedPropertiesJson="[&quot;PublishingImage&quot;,&quot;PictureURL&quot;,&quot;PictureThumbnailURL&quot;,&quot;Path&quot;,&quot;Title&quot;,&quot;Description&quot;,&quot;Keywords&quot;,&quot;SecondaryFileExtension&quot;,&quot;ContentTypeId&quot;]" HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" AvailableSortsJson="null" ShowBestBets="False" ShowPersonalFavorites="False" ShowDefinitions="False" ShowDidYouMean="False" PreloadedItemTemplateIdsJson="null" QueryGroupName="Default" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/demo_Control_Communities.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Content Search" FrameType="None" SuppressWebPartChrome="False" Description="&lt;%$Resources:Microsoft.Office.Server.Search,CBS_Description;%&gt;" IsIncluded="True" ZoneID="ImportedPartZone" PartOrder="0" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="&lt;%$Resources:core,ImportErrorMessage;%&gt;" ImportErrorMessage="&lt;%$Resources:core,ImportErrorMessage;%&gt;" PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_e06e6c09_bc02_4df9_b67a_6334d33975a4" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{e06e6c09-bc02-4df9-b67a-6334d33975a4}" WebPart="true" Height="" Width="" />

        </div>
    </div>
    <!-- end community list -->


    <!-- community list -->
    <div class="row">
        <div class="col-md-12">
            <div class="our-homes section">
                <h2 class="heading">Our Homes
</h2>
                <div class="row">
                    <div class="col-md-8 col-sm-8">
                        <div class="our-homes-col-wrapper">
                            <div class="header">
                                <img src="/sites/demo-masterpage/_catalogs/masterpage/demo-keep/img/icon-homes-home.png" alt="" />
                            </div>
                            <div class="row homes">


                                <Publishing:EditModePanel runat="server" CssClass="edit-mode-panel" GroupingText="Edit Home Fields">

                                    <!--home image-->

                                    <PageFieldRichImageField:RichImageField FieldName="3894ec3f-4674-4924-a440-8872bec40cf9" runat="server" InputFieldLabel="Homes Image" />


                                    <!--Homes Message-->

                                    <PageFieldRichHtmlField:RichHtmlField FieldName="f55c4d88-1f2e-4ad9-aaa8-819af4ee7ee8" runat="server" InputFieldLabel="Homes Content">
                                    </PageFieldRichHtmlField:RichHtmlField>

                                </Publishing:EditModePanel>



                                <Publishing:EditModePanel runat="server" PageDisplayMode="Display" SuppressTag="true">
                                    <div class="col-md-4 col-sm-4">

                                        <SharePointWebControls:FieldValue FieldName="3894ec3f-4674-4924-a440-8872bec40cf9" runat="server" />
                                    </div>
                                    <div class="col-md-8 col-sm-8">

                                        <SharePointWebControls:FieldValue FieldName="f55c4d88-1f2e-4ad9-aaa8-819af4ee7ee8" runat="server" />

                                        <br />
                                        <a href="#" class="button">Learn More</a>
                                    </div>
                                </Publishing:EditModePanel>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="our-homes-col-wrapper">
                            <div class="header">
                                <img src="/sites/demo-masterpage/_catalogs/masterpage/demo-keep/img/icon-homes-view.png" alt="" />
                            </div>
                            <div class="contentbox views cf">


                                <PageFieldRichHtmlField:RichHtmlField FieldName="66f500e9-7955-49ab-abb1-663621727d10" runat="server" InputFieldLabel="Views List">
                                </PageFieldRichHtmlField:RichHtmlField>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end community list -->
</asp:Content>