$('document').ready( function()
{
	
	
	$(window).scroll( function()
	{
		var dist = $(window).scrollTop();
		if(dist>200)
		{
			
			$('.sobre-item .amor').fadeIn();
			$('.sobre-item .perfeicao').fadeIn();
		}
		else
		{
			
			$('.sobre-item .amor').fadeOut();
			$('.sobre-item .perfeicao').fadeOut();
		}
	});
	
		
});
