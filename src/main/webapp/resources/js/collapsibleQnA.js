//collapsible menu
$(function(){
	$(".collapsible:eq(0) a").addClass("selected");

	//첫번째 collapsible 클래스를 제외한 나머지 collapsible 클래스를 선택하여, 그 아래의 content클래스를 찾아 숨긴다.
	$(".collapsible").not(":eq(0)").find(".collapsibleContent").hide();

	$(".collapsible .collapsible_title a").click(function(){
		//나를 제외한 것들을 removeClass한다.
		$(".collapsible .collapsible_title a").not(this).removeClass("selected");
		
		$(this).toggleClass("selected");
		
		var $target=$(this).parents(".collapsible").find(".collapsibleContent");
		$target.slideToggle(300);
		
		//선택한 애를 제외한 나머지 content class는 닫겨야 한다.
		var $other=$(".collapsible .collapsible_title a").not(this).parents(".collapsible").find(".collapsibleContent");
		$other.slideUp(300);
		
		return false;//link차단
		
	});
});
