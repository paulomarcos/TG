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

ActiveRecord::Schema.define(version: 20150928205749) do

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

  create_table "turmas", force: true do |t|
    t.string   "ano"
    t.string   "turma"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
