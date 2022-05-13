// where it gets sent to lua nuicallback
function closeCheckList() {
    $("#checklist").fadeOut(550);
    $.post('https://qb-miner/closeCheckList');
  }
  
  // where it creates function for opening menu
  $(document).ready(function () {
    window.addEventListener("message", function (event) {
      switch (event.data.action) {
      case "open":
        Open(event.data);
        break;
      }
    });
  });
  
  // where it displays menu
  Open = function (data) {
    $("#checklist").fadeIn(150);
  }
  
  // where it closes and sends to function close above
  $('.closeCheckList').click(() => {
    closeCheckList()
  });
  
  $(document).on("click", "#dacca-close", function(e) {
    closeCheckList();
  });