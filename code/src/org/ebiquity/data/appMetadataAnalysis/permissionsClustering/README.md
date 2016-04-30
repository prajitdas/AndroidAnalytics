Usage: python initClustering.py username api_key appCategoryListSelection restrictionListSelection restrictionType

appCategoryListSelection = [med|hea|hmd|hmdtop|fabra|top|all]
	med: medical apps
	hea: health & fitness apps
	hmd: health & fitness and medical apps
	hmdtop: health & fitness and medical top apps
	fabra: family brain games apps
	top: top Google apps
	all: all apps

restrictionListSelection = [int|top25|google]
	int: internet permissions
	top25: top 25 permissions
	google: google permissions

restrictionType = [allow|'']
	allow: allow selection
	'': deny