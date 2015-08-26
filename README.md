PMConf-SPRWD
============

Conference sessions by PixelMill / Eric Overfield - SharePoint Master Pages and Page Layouts

Master Page and Page Layout examples for SharePoint 2013, 2016 and SharePoint Online

session files contains all session files used in demos.

**Note: the Page Layouts, both traditional and HTML Page Layouts are tied to a custom content type.
In order for this to work for you, you will need to create a custom content type, but also change the content type id to match as well as include all of the site columns within this custom content type.

My suggestion is that you use the concepts found in the page layouts as examples, including SharePoint controls for editmodepanels, how to break up the editing and viewing experiences and field controls to view and edit different field types.

**master.demo.html
HTML Master Page. the master.demo.master is the associated master page that you will not want to edit, SharePoint would manage this for you. This master page should work for you out of the box.

**master.demo2.master
A traditional SharePoint Master page this is SP 2013, SP 2016 and SPO ready. Not that much of this would work in SP 2010 as well.

**pl.demo.homepage.html
HTML Page Layout that is tied to a custom content type. This will not work out of the box unless you create a new content type with all required site columns. Use this as an example of how to build a custom HTML Page Layout. Also note the Content Search Webpart included to provide a rollup.

**pl.demo.homepage2.aspx
A traditional SharePoint Page Layout that is SP 2013, SP 2016 and SPO ready. Similar to pl.demo.homepage.html/aspx.

**pl.demo.property.html
HTML Page Layout provided as how property pages were created that allow the content search rollup to work in the demo.homepage page layouts.

**index.html
The original HTML Prototype