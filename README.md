# xnr-lighter

##
**1. Add this section to ox_inventory/data/items.lua**
```lua
['lighter'] = {
	label = 'Lighter',
	weight = 15,
	stack = false,
	consume = 0.05,
	client = {
		export = 'xnr-lighter.lighter'
	}
},
```

**2. Drop file called "xnr-lighter" into your server resources. Run script through cfg file.**
