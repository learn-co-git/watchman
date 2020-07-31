class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :name
      t.string :url
      t.string :public_id
      t.string :box_width
      t.string :box_height
      t.string :box_left
      t.string :box_top
      t.integer :age_low
      t.integer :age_high
      t.string :eyeglasses
      t.string :eyeglass_con
      t.string :gender
      t.string :gender_con
      t.string :beard
      t.string :beard_con
      t.string :mustache
      t.string :mustache_con
      t.string :eyeLeft
      t.string :eyeRight
      t.string :mouthLeft
      t.string :mouthRight
      t.string :nose
      t.string :leftEyeBrowLeft
      t.string :leftEyeBrowRight
      t.string :leftEyeBrowUp
      t.string :rightEyeBrowLeft
      t.string :rightEyeBrowRight
      t.string :rightEyeBrowUp
      t.string :leftEyeLeft
      t.string :leftEyeRightleftEyeUp
      t.string :leftEyeDown
      t.string :rightEyeLeft
      t.string :rightEyeRight
      t.string :rightEyeUp
      t.string :rightEyeDown
      t.string :noseLeft
      t.string :noseRight
      t.string :mouthUp
      t.string :mouthDown
      t.string :leftPupil
      t.string :rightPupil
      t.string :upperJawlineLeft
      t.string :midJawlineLeft
      t.string :chinBottom
      t.string :midJawlineRight
      t.string :upperJawlineRight
      t.string :brightness
      t.string :sharpness
      t.string :compare_result
      t.string :label
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :report, null: true, foreign_key: false

      t.timestamps
    end
  end
end
