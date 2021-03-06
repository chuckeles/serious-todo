Rails.application.routes.draw do

  root                                to: "static_pages#home"
  get "about",                        to: "static_pages#about"

  devise_for :users

  get "users",                        to: "users#index"
  get "users/credit-card",            to: "users#show_credit_card"
  post "users/credit-card",           to: "users#create_credit_card"
  get "users/credit-card/delete",     to: "users#delete_credit_card"
  get "users/:name",                  to: "users#show",                  as: :user
  get "todo-apps",                    to: "todo_apps#index"
  get "todo-apps/connect",            to: "todo_apps#connect"
  get "todo-apps/connect/todoist",    to: "todo_apps#connect_todoist"
  get "todo-apps/disconnect",         to: "todo_apps#disconnect"
  get "todo-apps/disconnect/todoist", to: "todo_apps#disconnect_todoist"
  get "tasks",                        to: "tasks#index"
  get "tasks/:id",                    to: "tasks#show",                  as: :task
  post "pledges/:id",                 to: "pledges#create",              as: :pledge

end
