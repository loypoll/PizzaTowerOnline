modstate = "";
if global.modifier != -1
{
	switch global.modifier
	{
		default:
			modstate = "Modifier";
			break;
			
		case mods.no_toppings:
			modstate = "No Toppings MOD.";
			break;
		case mods.pacifist:
			modstate = "Pacifist MOD.";
			break;
		case mods.hardmode:
			modstate = "April Hardmode MOD.";
			break;
	}
	if global.failedmod
		modstate += " (failed)";
}

