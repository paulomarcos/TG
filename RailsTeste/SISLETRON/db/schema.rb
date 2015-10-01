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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151001190045) do

  create_table "alunos", force: true do |t|
    t.string   "nome"
    t.string   "data_nascimento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "turma_id"
  end

  add_index "alunos", ["turma_id"], name: "index_alunos_on_turma_id"

  create_table "area_conhecimentos", force: true do |t|
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conteudos", force: true do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.integer  "ano"
    t.integer  "area_conhecimento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conteudos", ["area_conhecimento_id"], name: "index_conteudos_on_area_conhecimento_id"

  create_table "escolas", force: true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professor_turmas", force: true do |t|
    t.integer  "turma_id"
    t.integer  "professor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professor_turmas", ["professor_id"], name: "index_professor_turmas_on_professor_id"
  add_index "professor_turmas", ["turma_id"], name: "index_professor_turmas_on_turma_id"

  create_table "professors", force: true do |t|
    t.string   "nome"
    t.date     "data_nascimento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projeto_conteudos", force: true do |t|
    t.integer  "projeto_id"
    t.integer  "conteudo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projeto_conteudos", ["conteudo_id"], name: "index_projeto_conteudos_on_conteudo_id"
  add_index "projeto_conteudos", ["projeto_id"], name: "index_projeto_conteudos_on_projeto_id"

  create_table "projeto_turmas", force: true do |t|
    t.integer  "turma_id"
    t.integer  "projeto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projeto_turmas", ["projeto_id"], name: "index_projeto_turmas_on_projeto_id"
  add_index "projeto_turmas", ["turma_id"], name: "index_projeto_turmas_on_turma_id"

  create_table "projetos", force: true do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.string   "avaliacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turmas", force: true do |t|
    t.string   "ano"
    t.string   "turma"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "escola_id"
  end

  add_index "turmas", ["escola_id"], name: "index_turmas_on_escola_id"

end
