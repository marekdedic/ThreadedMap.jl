function testTmapfoldl1Stable()::Bool
	arr = rand(1:1000, rand(1:10, rand(1:4))...);
	return mapfoldl(x->2x, +, 0, arr) == tmapfoldl(x->2x, +, 0, arr);
end

function testTmapfoldl1Unstable()::Bool
	arr = rand(1:100, rand(1:5, rand(1:4))...);
	str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin suscipit eleifend faucibus. Aenean in tellus vel urna consectetur vestibulum. Cras pharetra malesuada arcu at dignissim. Duis finibus in est eget accumsan. Quisque interdum urna at dolor sodales, sagittis condimentum nisi egestas. Nullam quis blandit velit, eget consectetur augue. Praesent ut aliquam erat. Integer vitae elementum erat. Curabitur facilisis pharetra libero, non iaculis diam aliquet at. Proin scelerisque ornare dui in sollicitudin. Aenean iaculis risus ut massa ullamcorper, non sodales purus congue. Nullam vitae rhoncus augue, sed maximus ante. Donec id lectus ac lectus tincidunt placerat. Nullam maximus in elit et imperdiet. Vivamus nunc ex, semper at ornare eget, tempor a libero. Proin ut nisi viverra, fringilla ligula eu, iaculis eros. Ut eget ipsum vitae ante ornare gravida. In mollis ligula non odio posuere placerat sed vel metus. Duis ultrices ipsum eu lacus vestibulum lobortis. Nunc vestibulum magna convallis porta pretium. Nunc placerat, sem vel imperdiet bibendum, ex elit tristique dui, non volutpat.";
	return mapfoldl(x->str[1:x], *, "", arr) == tmapfoldl(x->str[1:x], *, "", arr);
end

function testTmapfoldl2Stable()::Bool
	arr = rand(1:1000, rand(1:10, rand(1:4))...);
	return mapfoldl(x->2x, +, arr) == tmapfoldl(x->2x, +, arr);
end

function testTmapfoldl2Unstable()::Bool
	arr = rand(1:100, rand(1:5, rand(1:4))...);
	str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin suscipit eleifend faucibus. Aenean in tellus vel urna consectetur vestibulum. Cras pharetra malesuada arcu at dignissim. Duis finibus in est eget accumsan. Quisque interdum urna at dolor sodales, sagittis condimentum nisi egestas. Nullam quis blandit velit, eget consectetur augue. Praesent ut aliquam erat. Integer vitae elementum erat. Curabitur facilisis pharetra libero, non iaculis diam aliquet at. Proin scelerisque ornare dui in sollicitudin. Aenean iaculis risus ut massa ullamcorper, non sodales purus congue. Nullam vitae rhoncus augue, sed maximus ante. Donec id lectus ac lectus tincidunt placerat. Nullam maximus in elit et imperdiet. Vivamus nunc ex, semper at ornare eget, tempor a libero. Proin ut nisi viverra, fringilla ligula eu, iaculis eros. Ut eget ipsum vitae ante ornare gravida. In mollis ligula non odio posuere placerat sed vel metus. Duis ultrices ipsum eu lacus vestibulum lobortis. Nunc vestibulum magna convallis porta pretium. Nunc placerat, sem vel imperdiet bibendum, ex elit tristique dui, non volutpat.";
	return mapfoldl(x->str[1:x], *, arr) == tmapfoldl(x->str[1:x], *, arr);
end
