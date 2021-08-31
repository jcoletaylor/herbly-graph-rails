#!/bin/bash

bundle exec rails generate scaffold Condition name:string 

bundle exec rails generate scaffold FormulaAction formula:references formula_named_action:references 

bundle exec rails generate scaffold FormulaAlsoKnown name:string formula:references 

bundle exec rails generate scaffold FormulaCondition formula:references condition:references 

bundle exec rails generate scaffold FormulaContraindication formula:references contraindication:text 

bundle exec rails generate scaffold FormulaHerbAction formula_herb:references formula_named_action:references 

bundle exec rails generate scaffold FormulaHerb formula:references herb:references dosage:string 

bundle exec rails generate scaffold FormulaInteraction formula:references interaction:text 

bundle exec rails generate scaffold FormulaManifestationSymptom formula_manifestation:references symptom:references 

bundle exec rails generate scaffold FormulaManifestation formula:references tongue:string tongue_coat:string pulse:string 

bundle exec rails generate scaffold FormulaModificationSet formula:references purpose:string 

bundle exec rails generate scaffold FormulaModification formula_modification_set:references herb:references modification:string 

bundle exec rails generate scaffold FormulaNamedAction name:string 

bundle exec rails generate scaffold FormulaNote formula:references note:text 

bundle exec rails generate scaffold FormulaSyndrome formula:references syndrome:references 

bundle exec rails generate scaffold Formula name:string pinyin:string hanzi:string english:string common_english:string 

bundle exec rails generate scaffold HerbActionAnnotation herb_action:references annotation:text 

bundle exec rails generate scaffold HerbActionIndication herb_action:references indication:text 

bundle exec rails generate scaffold HerbActionType name:string description:text 

bundle exec rails generate scaffold HerbAction herb:references herb_action_type:references 

bundle exec rails generate scaffold HerbCategory name:string description:text 

bundle exec rails generate scaffold HerbCombinationHerb herb:references herb_combination:references 

bundle exec rails generate scaffold HerbCombinationUseCase herb_combination:references use_case:text 

bundle exec rails generate scaffold HerbCombination description:string 

bundle exec rails generate scaffold HerbDosageType name:string description:text 

bundle exec rails generate scaffold HerbDosage herb:references herb_dosage_type:references dosage:string 

bundle exec rails generate scaffold HerbNote herb:references note:text 

bundle exec rails generate scaffold HerbProperty herb:references herb_property_type:references precedence_type:references property:string 

bundle exec rails generate scaffold HerbPropertyType name:string description:text 

bundle exec rails generate scaffold HerbWarningType name:string 

bundle exec rails generate scaffold HerbWarning herb:references herb_warning_type:references warning:string 

bundle exec rails generate scaffold Herb name:string herb_category:references pinyin:string hanzi:string latin:string pharm_latin:string common_english:string 

bundle exec rails generate scaffold PrecedenceType name:string description:text 

bundle exec rails generate scaffold Symptom name:string 

bundle exec rails generate scaffold Syndrome name:string 

bundle exec rails generate scaffold User email:string encrypted_password:string reset_password_token:string reset_password_sent_at:datetime remember_created_at:datetime 
