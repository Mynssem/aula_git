$('document').ready( function()
{
	
	
	$(window).scroll( function()
	{
		var dist = $(window).scrollTop();
		if(dist>200)
		{			
			$('.sobre').fadeIn();
					
		}
		else
		{
			
			$('.sobre').fadeOut();
			

	
		}
		if(dist>1100)
		{			
			
			$('.locais').fadeIn();	
					
		}
		else
		{
			
			$('.locais').fadeOut();
			
		}
		
	});
	
		
});
