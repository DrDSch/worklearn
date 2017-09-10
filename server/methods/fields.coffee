################################################################
#
# Markus 1/23/2017
#
################################################################

################################################################
Meteor.methods
	set_field: (collection_name, item_id, field, data)->
		collection = get_collection_save collection_name
		return modify_field collection, item_id, field, data

	add_recommendation: (collection_name, item_id, field, data)->
		collection = get_collection_save "Solution"
		return add_recommendation_save collection, item_id, field, data

	upload_file: (collection_name, item_id, field, data, type)->
		collection = get_collection_save collection_name
		return upload_file collection, item_id, field, data, type

	download_file: (collection_name, item_id, field)->
		collection = get_collection_save collection_name
		return download_file collection, item_id, field


