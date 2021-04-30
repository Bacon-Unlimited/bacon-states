# Bacon States

## Overview

## Features
- Documentation: some of the initial states have descriptive comments discussing how to create these state files
- Coordination with Bacon: these states can install packages from within Bacon and run scripts defined from within Bacon

## Windows GPO and Registry States
Under the [Windows folder](Windows) you'll find states that manage [gpo](Windows/gpo) and [registry](Windows/registry) settings 
for disabling various types of removable storage.  The enable versions of these states are not provided, but you can 
easily create them simply by toggling to the opposite setting (e.g., "Disabled" instead of "Enabled", "0" instead of "1").  
  
These examples were created using [Group Policy Administrative Templates Catalog](https://admx.help/) to find the exact 
registry keys or GPO names.  For example, see [https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.RemovableStorageAccess::RemovableStorageClasses_DenyAll_Access_2](https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.RemovableStorageAccess::RemovableStorageClasses_DenyAll_Access_2) for the settings to deny all access to all 
removable storage.  You can find many more GPO settings there in order to create additional states that will let you 
manage all kinds of Windows settings.  The examples provided should give you a good template to use when creating your own.  
