class TextMaterialsController < ApplicationController
  def index
    @text_materials = TextMaterial.all
  end
end