#include "EntityProcessingSystem.h"
namespace artemis {
	
	bool EntityProcessingSystem::checkProcessing() {
		return true;
	}

	void EntityProcessingSystem::processEntities(ImmutableBag<Entity*>* bag) {
		for(int i=0; i < bag->getCount(); i++) 
			{work(bag->get(i));}
	}

};
