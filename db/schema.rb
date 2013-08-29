# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130829151931) do

  create_table "category_products", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.integer  "city_id"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "obs"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "customers", ["city_id"], :name => "index_customers_on_city_id"

  create_table "marks", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.integer  "categoryProduct_id"
    t.integer  "mark_id"
    t.decimal  "precoCompra"
    t.decimal  "precoVenda"
    t.decimal  "precoMedio"
    t.decimal  "quantidadeEstoqueMinimo"
    t.decimal  "quantidadeEstoqueMaximo"
    t.string   "observacao"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "products", ["categoryProduct_id"], :name => "index_products_on_categoryProduct_id"
  add_index "products", ["mark_id"], :name => "index_products_on_mark_id"

  create_table "providers", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.integer  "city_id"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "obs"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "providers", ["city_id"], :name => "index_providers_on_city_id"

end
