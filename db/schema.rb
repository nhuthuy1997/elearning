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

ActiveRecord::Schema.define(version: 2019_01_04_093241) do

  create_table "answers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "content"
    t.integer "status"
    t.bigint "class_id"
    t.boolean "all_above"
    t.boolean "right_answer"
    t.index ["class_id"], name: "index_answers_on_class_id"
  end

  create_table "class_trainees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "class_id"
    t.bigint "user_id"
    t.index ["class_id"], name: "index_class_trainees_on_class_id"
    t.index ["user_id"], name: "index_class_trainees_on_user_id"
  end

  create_table "classes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.string "description"
    t.bigint "user_id"
    t.boolean "is_openning"
    t.index ["user_id"], name: "index_classes_on_user_id"
  end

  create_table "exam_structures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.integer "start_point"
    t.integer "end_point"
    t.boolean "breakpoint"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_exam_structures_on_user_id"
  end

  create_table "exams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.string "description"
    t.bigint "class_id"
    t.integer "total_question"
    t.integer "time_allow"
    t.integer "max_attempts"
    t.bigint "exam_structure_id"
    t.index ["class_id"], name: "index_exams_on_class_id"
    t.index ["exam_structure_id"], name: "index_exams_on_exam_structure_id"
  end

  create_table "questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "content"
    t.integer "status"
    t.bigint "exam_id"
    t.integer "style"
    t.index ["exam_id"], name: "index_questions_on_exam_id"
  end

  create_table "trainee_answers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainee_question_id"
    t.boolean "is_chose"
    t.bigint "answer_id"
    t.index ["answer_id"], name: "index_trainee_answers_on_answer_id"
    t.index ["trainee_question_id"], name: "index_trainee_answers_on_trainee_question_id"
  end

  create_table "trainee_exams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "status"
    t.bigint "exam_id"
    t.bigint "user_id"
    t.integer "result"
    t.integer "point"
    t.integer "time_finish"
    t.index ["exam_id"], name: "index_trainee_exams_on_exam_id"
    t.index ["user_id"], name: "index_trainee_exams_on_user_id"
  end

  create_table "trainee_questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainee_exam_id"
    t.bigint "question_id"
    t.index ["question_id"], name: "index_trainee_questions_on_question_id"
    t.index ["trainee_exam_id"], name: "index_trainee_questions_on_trainee_exam_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.string "email2"
    t.boolean "is_activated"
    t.string "activated_token"
    t.string "password"
    t.string "avatar"
    t.integer "phone"
    t.datetime "birthday"
    t.string "type"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "classes"
  add_foreign_key "class_trainees", "classes"
  add_foreign_key "class_trainees", "users"
  add_foreign_key "classes", "users"
  add_foreign_key "exam_structures", "users"
  add_foreign_key "exams", "classes"
  add_foreign_key "exams", "exam_structures"
  add_foreign_key "questions", "exams"
  add_foreign_key "trainee_answers", "answers"
  add_foreign_key "trainee_answers", "trainee_questions"
  add_foreign_key "trainee_exams", "exams"
  add_foreign_key "trainee_exams", "users"
  add_foreign_key "trainee_questions", "questions"
  add_foreign_key "trainee_questions", "trainee_exams"
end
