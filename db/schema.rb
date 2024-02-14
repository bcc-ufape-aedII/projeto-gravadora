# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_02_14_154334) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "btree_gin"
  enable_extension "btree_gist"
  enable_extension "citext"
  enable_extension "cube"
  enable_extension "dblink"
  enable_extension "dict_int"
  enable_extension "dict_xsyn"
  enable_extension "earthdistance"
  enable_extension "fuzzystrmatch"
  enable_extension "hstore"
  enable_extension "intarray"
  enable_extension "ltree"
  enable_extension "pg_stat_statements"
  enable_extension "pg_trgm"
  enable_extension "pgcrypto"
  enable_extension "pgrowlocks"
  enable_extension "pgstattuple"
  enable_extension "plpgsql"
  enable_extension "tablefunc"
  enable_extension "unaccent"
  enable_extension "uuid-ossp"
  enable_extension "xml2"

  create_table "albums", force: :cascade do |t|
    t.string "titulo"
    t.date "data_lancamento"
    t.bigint "artista_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artista_id"], name: "index_albums_on_artista_id"
  end

  create_table "artista", force: :cascade do |t|
    t.string "nome_artistico"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contratos", force: :cascade do |t|
    t.date "data_inicio"
    t.date "data_fim"
    t.text "clausulas"
    t.decimal "valor"
    t.bigint "artista_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artista_id"], name: "index_contratos_on_artista_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.integer "salario"
    t.text "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "integrantes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "funcao"
    t.bigint "artista_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artista_id"], name: "index_integrantes_on_artista_id"
  end

  create_table "musicas", force: :cascade do |t|
    t.string "titulo"
    t.time "duracao"
    t.date "data_lancamento"
    t.string "genero"
    t.bigint "album_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_musicas_on_album_id"
  end

  add_foreign_key "albums", "artista", column: "artista_id"
  add_foreign_key "contratos", "artista", column: "artista_id"
  add_foreign_key "integrantes", "artista", column: "artista_id"
  add_foreign_key "musicas", "albums"
end
