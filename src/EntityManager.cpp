#include "EntityManager.h"
#include "EntitySystem.h"
#include "SystemManager.h"
#include "BitSize.h"
#include "World.h"
#include "Component.h"

using namespace artemis::component;
using namespace artemis::util;

namespace artemis {
	namespace system {
		EntityManager::EntityManager(World* world) : componentsByType(64) {
			this->world = world;
		};

		void EntityManager::addComponent(Entity * e, Component * c) {
			ComponentType type = ComponentTypeManager::getTypeFor(typeid(*c));

			if(type.getId() >= componentsByType.getCapacity()) {
				//Resize
				componentsByType.set(type.getId(), nullptr);
			}

			Bag<Component*> * components = componentsByType.get(type.getId());

			if(components == nullptr) {
				components = new Bag<Component*>();
				componentsByType.set(type.getId(), components);
			}

			components->set(e->getId(), c);
			e->addTypeBit(type.getBit());

		};

		Entity* EntityManager::create() {

			Entity * e = this->removedAndAvailable.removeLast();

			if(e == nullptr) {
				e = new Entity(this->world, nextAvailableId++);
			} else {
				e->reset();
			}

			e->setUniqueId(uniqueEntityId++);
			activeEntities.set(e->getId(),e);
			count++;
			totalCreated++;
			return e;

		};

		Entity* EntityManager::getEntity(int entityId) {
			return activeEntities.get(entityId);
		};

		int EntityManager::getEntityCount() {
			return count;
		};

		long EntityManager::getTotalCreated() {
			return totalCreated;
		};

		long EntityManager::getTotalRemoved() {
			return totalRemoved;
		};

		artemis::component::Component * EntityManager::getComponent(Entity * e, artemis::component::ComponentType & type) {

			artemis::util::Bag<artemis::component::Component*>* bag = componentsByType.get(type.getId());

			if(bag != nullptr && e->getId() < bag->getCapacity())
				return bag->get(e->getId());

			return nullptr;
		};


		Bag<Component*> * EntityManager::getComponents(Entity* e) {
			entityComponents->clear();

			for(int i=0; i< componentsByType.getCapacity(); i++) {
				Bag<Component*> * components = componentsByType.get(i);

				if(components != nullptr && e->getId() < components->getCapacity()) {
					Component * c = components->get(e->getId());

					if(c != nullptr) {
						entityComponents->add(c);
					}
				}
			}

			return entityComponents;
		};

		bool EntityManager::isActive(int entityId) {
			return activeEntities.get(entityId) != nullptr;
		};

		void EntityManager::refresh(Entity* e) {
			SystemManager * systemManager = world->getSystemManager();
			Bag<EntitySystem*> * systems = systemManager->getSystems();

			for(int i=0; i< systems->getCount(); i++) {
				systems->get(i)->change(*e);
			}

		};

		void EntityManager::remove(Entity* e) {
			activeEntities.set(e->getId(), nullptr);
			e->setTypeBits(0);
			refresh(e);
			removeComponentsOfEntity(e);
			count--;
			totalRemoved++;
			removedAndAvailable.add(e);
		};

		void EntityManager::removeComponent(Entity* e, ComponentType & type) {
			Bag<Component* > * components = componentsByType.get(type.getId());
			components->set(e->getId(), nullptr);
			e->removeTypeBit(type.getBit());
		};

		void EntityManager::removeComponentsOfEntity(Entity* e) {
			for(int i=0; i<componentsByType.getCapacity(); i++) {
				Bag<Component*> * components = componentsByType.get(i);

				if(components != nullptr && e->getId() < components->getCapacity()) {
					//TODO Destroy/Deallocate components from memory
					components->set(e->getId(), nullptr);
				}
			}

		};

	};
};