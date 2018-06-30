<%@ Page Language="VB" AutoEventWireup="false" CodeFile="test.aspx.vb" Inherits="test" %>
<html>
    <head>
           <title></title>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
        <style>
            .nav-tabs >div>a {
   margin-left: -1px;
   position: relative;
   left: 1px;
   text-decoration: none;
   color: black;
   background: black;
   display: block;
   float: left;
   padding: 5px 10px;
   border: 1px solid #ccc;
   border-bottom: 1px solid white;
}
        </style>
    </head>
    <body>
        <div class="container">
  <h3>
    Ciclar as tabs do bootstrap para apresentação de videos de 10s
  </h3>
  <br/><br/>
  <div id="tab-carousel">
    <ul class="nav nav-tabs " >
      <li class="active"  >
        <a href="#follow" >Follow</a>
      </li>
      <li>
        <a href="#theyellow" >The Yellow</a>
      </li>
      <li>
        <a href="#brick" >Brick</a>
      </li>
      <li>
        <a href="#road" >Road</a>
      </li>
      <li>
        <a href="#pussy" >Pussy</a>
      </li>
    </ul>
    <div class="tab-content">
      <div class="tab-pane active" id="follow">
        Follow
      </div>
      <div class="tab-pane" id="theyellow">
        The Yellow
      </div>
      <div class="tab-pane" id="brick">
        Brick
      </div>
      <div class="tab-pane" id="road">
        Road
      </div>
      <div class="tab-pane" id="pussy">
        <h1>Pussy</h1>
      </div>
    </div>
  </div>
</div>
        <script>
        // default bootstrap click, apenas muda com ação do utilizador
//$('#myTab a').click(function (e) {
//  e.preventDefault()
//  $(this).tab('show')
//})

// Tab-Pane change function
    var tabChange = function(){
        var tabs = $('.nav-tabs > li');
        var active = tabs.filter('.active');
      
        var next = active.next('li').length? active.next('li').find('a') : tabs.filter(':first-child').find('a');
        // Bootsrap tab show, para ativar a tab
    
        next.tab('show')
        document.getElementById(nav-tabs).style.borderBottom = "1px solid orange"
      
    }
    // Tab Cycle function
    var tabCycle = setInterval(tabChange, 1000)
    // Tab click event handler
    $(function(){
        $('.nav-tabs a').click(function(e) {
            e.preventDefault();
            // Parar o loop
            clearInterval(tabCycle);
            // mosta o tab clicado, default bootstrap
            $(this).tab('show')
            // Inicia o ciclo outra vez
            setTimeout(function(){
                tabCycle = setInterval(tabChange, 1000)//quando recomeça assume este timing
            }, 1000);
        });
    });
    </script>
       
    </body>
</html>
