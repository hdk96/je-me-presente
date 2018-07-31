Rails.application.routes.draw do
	root                    to: 'static_pages#home',       as: :home

	get 'contact',		    to: 'static_pages#contact',    as: :contact
	get 'about', 		    to: 'static_pages#about', 	   as: :about
	get 'about/toi',        to: 'static_pages#toi',        as: :you
	get 'about/ton_groupe', to: 'static_pages#ton_groupe', as: :yourgroup

	get  'users/new',		to: 'users#new',               as: :newuser
	post 'users/create',    to: 'users#create'           

	get 'users/error', 		to: 'users#error',             as: :error
	get 'users/:user_id',   to: 'users#show',			   as: :showprofil


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
