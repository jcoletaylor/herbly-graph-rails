# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  resources :syndromes
  resources :symptoms
  resources :precedence_types
  resources :herbs
  resources :herb_warnings
  resources :herb_warning_types
  resources :herb_property_types
  resources :herb_properties
  resources :herb_notes
  resources :herb_dosages
  resources :herb_dosage_types
  resources :herb_combinations
  resources :herb_combination_use_cases
  resources :herb_combination_herbs
  resources :herb_categories
  resources :herb_actions
  resources :herb_action_types
  resources :herb_action_indications
  resources :herb_action_annotations
  resources :formulas
  resources :formula_syndromes
  resources :formula_notes
  resources :formula_named_actions
  resources :formula_modifications
  resources :formula_modification_sets
  resources :formula_manifestations
  resources :formula_manifestation_symptoms
  resources :formula_interactions
  resources :formula_herbs
  resources :formula_herb_actions
  resources :formula_contraindications
  resources :formula_conditions
  resources :formula_also_knowns
  resources :formula_actions
  resources :conditions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
