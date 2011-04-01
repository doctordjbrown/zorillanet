class PatientsController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
# this is from tutorial - need to work out how to use this
  
  # def show
  #   @project = find_instance
  #   @stories =
  #     @project.stories.apply_scopes(:search    => [params[:search], :title],
  #                                  :order_by  => parse_sort_param(:title, :status))
  # end
  

end
