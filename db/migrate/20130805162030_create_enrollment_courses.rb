class CreateEnrollmentCourses < ActiveRecord::Migration
  def change
    create_table :enrollment_courses do |t|
      t.integer :program_enrollment_id
      t.integer :novanet_course_id
      t.boolean :completed

      t.timestamps
    end
  end
end
