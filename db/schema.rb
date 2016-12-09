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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161209213332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.date     "data_agendamento"
    t.datetime "hora"
    t.string   "entrada"
    t.string   "saida"
    t.string   "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "animal"
    t.integer  "animal_id"
    t.integer  "servico_id"
  end

# Could not dump table "animals" because of following StandardError
#   Unknown type 'clientes' for column 'references'

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "uf"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.date     "dt_nascimento"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "contas_recebers", force: :cascade do |t|
    t.decimal  "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "ficha_animals" because of following StandardError
#   Unknown type 'animals' for column 'references'

  create_table "fornecedors", force: :cascade do |t|
    t.string   "razao_social"
    t.string   "fantasia"
    t.string   "cnpj"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "cep"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "funcao"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "uf"
    t.string   "login"
    t.string   "senha"
    t.string   "fone"
    t.string   "celular"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissaos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "nome"
    t.string   "marca"
    t.string   "grupo"
    t.string   "tipo"
    t.float    "peso"
    t.decimal  "preco_venda"
    t.date     "validade"
    t.integer  "lote"
    t.decimal  "preco_compra"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "servicos", force: :cascade do |t|
    t.string   "servico"
    t.decimal  "valor"
    t.string   "tempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vacinas", force: :cascade do |t|
    t.string   "vacina"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
