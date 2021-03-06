module CampusSolutions
  module EnrollmentTermExpiry
    def self.expire(uid=nil)
      [
        EdoOracle::UserCourses::All,
        MyAcademics::Merged,
        MyAcademics::ClassEnrollments,
        MyRegistrations::MyRegistrations
      ].each do |klass|
        klass.expire uid
      end
    end
  end
end
