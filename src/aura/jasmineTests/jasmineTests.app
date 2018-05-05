<aura:application >

    <c:lts_jasmineRunner testFiles="{!join(',', 
    	$Resource.ltsDemoTests
    )}" />

</aura:application>