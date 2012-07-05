##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Artemis
ConfigurationName      :=Debug
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
WorkspacePath          := "C:\Users\Sidar\Documents\Sidar\C++\ST"
ProjectPath            := "C:\Users\Sidar\Documents\Sidar\C++\ST\Artemis"
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Sidar
Date                   :=5-7-2012
CodeLitePath           :="C:\Program Files (x86)\CodeLite"
LinkerName             :=g++
ArchiveTool            :=ar rcus
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
CompilerName           :=g++
C_CompilerName         :=gcc
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)_ARTEMIS_DEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="C:\Users\Sidar\Documents\Sidar\C++\ST\Artemis\Artemis.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
CmpOptions             := -g -O0 -Wall -std=c++0x  $(Preprocessors)
C_CmpOptions           := -g -O0 -Wall  $(Preprocessors)
LinkOptions            :=  -static-libstdc++ -pg 
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)src 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
LibPath                := $(LibraryPathSwitch). 


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files (x86)\CodeLite
Objects=$(IntermediateDirectory)/main$(ObjectSuffix) $(IntermediateDirectory)/src_Component$(ObjectSuffix) $(IntermediateDirectory)/src_ComponentType$(ObjectSuffix) $(IntermediateDirectory)/src_ComponentTypeManager$(ObjectSuffix) $(IntermediateDirectory)/src_EntityProcessingSystem$(ObjectSuffix) $(IntermediateDirectory)/src_EntitySystem$(ObjectSuffix) $(IntermediateDirectory)/src_Entity$(ObjectSuffix) $(IntermediateDirectory)/src_World$(ObjectSuffix) $(IntermediateDirectory)/src_EntityManager$(ObjectSuffix) $(IntermediateDirectory)/src_SystemBitManager$(ObjectSuffix) \
	$(IntermediateDirectory)/src_SystemManager$(ObjectSuffix) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/main.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/main$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main$(DependSuffix): main.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main$(ObjectSuffix) -MF$(IntermediateDirectory)/main$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/main.cpp"

$(IntermediateDirectory)/main$(PreprocessSuffix): main.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/main.cpp"

$(IntermediateDirectory)/src_Component$(ObjectSuffix): src/Component.cpp $(IntermediateDirectory)/src_Component$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/Component.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_Component$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Component$(DependSuffix): src/Component.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Component$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Component$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/Component.cpp"

$(IntermediateDirectory)/src_Component$(PreprocessSuffix): src/Component.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Component$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/Component.cpp"

$(IntermediateDirectory)/src_ComponentType$(ObjectSuffix): src/ComponentType.cpp $(IntermediateDirectory)/src_ComponentType$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/ComponentType.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_ComponentType$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ComponentType$(DependSuffix): src/ComponentType.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ComponentType$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ComponentType$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/ComponentType.cpp"

$(IntermediateDirectory)/src_ComponentType$(PreprocessSuffix): src/ComponentType.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ComponentType$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/ComponentType.cpp"

$(IntermediateDirectory)/src_ComponentTypeManager$(ObjectSuffix): src/ComponentTypeManager.cpp $(IntermediateDirectory)/src_ComponentTypeManager$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/ComponentTypeManager.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_ComponentTypeManager$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ComponentTypeManager$(DependSuffix): src/ComponentTypeManager.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ComponentTypeManager$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ComponentTypeManager$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/ComponentTypeManager.cpp"

$(IntermediateDirectory)/src_ComponentTypeManager$(PreprocessSuffix): src/ComponentTypeManager.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ComponentTypeManager$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/ComponentTypeManager.cpp"

$(IntermediateDirectory)/src_EntityProcessingSystem$(ObjectSuffix): src/EntityProcessingSystem.cpp $(IntermediateDirectory)/src_EntityProcessingSystem$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/EntityProcessingSystem.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_EntityProcessingSystem$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_EntityProcessingSystem$(DependSuffix): src/EntityProcessingSystem.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_EntityProcessingSystem$(ObjectSuffix) -MF$(IntermediateDirectory)/src_EntityProcessingSystem$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/EntityProcessingSystem.cpp"

$(IntermediateDirectory)/src_EntityProcessingSystem$(PreprocessSuffix): src/EntityProcessingSystem.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_EntityProcessingSystem$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/EntityProcessingSystem.cpp"

$(IntermediateDirectory)/src_EntitySystem$(ObjectSuffix): src/EntitySystem.cpp $(IntermediateDirectory)/src_EntitySystem$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/EntitySystem.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_EntitySystem$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_EntitySystem$(DependSuffix): src/EntitySystem.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_EntitySystem$(ObjectSuffix) -MF$(IntermediateDirectory)/src_EntitySystem$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/EntitySystem.cpp"

$(IntermediateDirectory)/src_EntitySystem$(PreprocessSuffix): src/EntitySystem.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_EntitySystem$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/EntitySystem.cpp"

$(IntermediateDirectory)/src_Entity$(ObjectSuffix): src/Entity.cpp $(IntermediateDirectory)/src_Entity$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/Entity.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_Entity$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Entity$(DependSuffix): src/Entity.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Entity$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Entity$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/Entity.cpp"

$(IntermediateDirectory)/src_Entity$(PreprocessSuffix): src/Entity.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Entity$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/Entity.cpp"

$(IntermediateDirectory)/src_World$(ObjectSuffix): src/World.cpp $(IntermediateDirectory)/src_World$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/World.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_World$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_World$(DependSuffix): src/World.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_World$(ObjectSuffix) -MF$(IntermediateDirectory)/src_World$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/World.cpp"

$(IntermediateDirectory)/src_World$(PreprocessSuffix): src/World.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_World$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/World.cpp"

$(IntermediateDirectory)/src_EntityManager$(ObjectSuffix): src/EntityManager.cpp $(IntermediateDirectory)/src_EntityManager$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/EntityManager.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_EntityManager$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_EntityManager$(DependSuffix): src/EntityManager.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_EntityManager$(ObjectSuffix) -MF$(IntermediateDirectory)/src_EntityManager$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/EntityManager.cpp"

$(IntermediateDirectory)/src_EntityManager$(PreprocessSuffix): src/EntityManager.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_EntityManager$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/EntityManager.cpp"

$(IntermediateDirectory)/src_SystemBitManager$(ObjectSuffix): src/SystemBitManager.cpp $(IntermediateDirectory)/src_SystemBitManager$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/SystemBitManager.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_SystemBitManager$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_SystemBitManager$(DependSuffix): src/SystemBitManager.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_SystemBitManager$(ObjectSuffix) -MF$(IntermediateDirectory)/src_SystemBitManager$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/SystemBitManager.cpp"

$(IntermediateDirectory)/src_SystemBitManager$(PreprocessSuffix): src/SystemBitManager.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_SystemBitManager$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/SystemBitManager.cpp"

$(IntermediateDirectory)/src_SystemManager$(ObjectSuffix): src/SystemManager.cpp $(IntermediateDirectory)/src_SystemManager$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/SystemManager.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_SystemManager$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_SystemManager$(DependSuffix): src/SystemManager.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_SystemManager$(ObjectSuffix) -MF$(IntermediateDirectory)/src_SystemManager$(DependSuffix) -MM "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/SystemManager.cpp"

$(IntermediateDirectory)/src_SystemManager$(PreprocessSuffix): src/SystemManager.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_SystemManager$(PreprocessSuffix) "C:/Users/Sidar/Documents/Sidar/C++/ST/Artemis/src/SystemManager.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/main$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/main$(DependSuffix)
	$(RM) $(IntermediateDirectory)/main$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_Component$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_Component$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_Component$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_ComponentType$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_ComponentType$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_ComponentType$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_ComponentTypeManager$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_ComponentTypeManager$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_ComponentTypeManager$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_EntityProcessingSystem$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_EntityProcessingSystem$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_EntityProcessingSystem$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_EntitySystem$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_EntitySystem$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_EntitySystem$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_Entity$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_Entity$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_Entity$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_World$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_World$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_World$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_EntityManager$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_EntityManager$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_EntityManager$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_SystemBitManager$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_SystemBitManager$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_SystemBitManager$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_SystemManager$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_SystemManager$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_SystemManager$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) $(OutputFile).exe
	$(RM) "C:\Users\Sidar\Documents\Sidar\C++\ST\.build-debug\Artemis"


