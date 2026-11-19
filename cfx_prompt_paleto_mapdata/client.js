const resourceName = GetCurrentResourceName();

emitNet('requestVertexHubResources/cfx_prompt_paleto_mapdata');

onNet('registerVertexHubResources/cfx_prompt_paleto_mapdata', (resourcesDto) => {
	const resources = JSON.parse(resourcesDto);
	for (const { fileName, cacheString } of resources) {
		RegisterStreamingFileFromCache(resourceName, fileName, cacheString);
	}
});