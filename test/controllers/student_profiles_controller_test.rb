require 'test_helper'

class StudentProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_profile = student_profiles(:one)
  end

  test "should get index" do
    get student_profiles_url, as: :json
    assert_response :success
  end

  test "should create student_profile" do
    assert_difference('StudentProfile.count') do
      post student_profiles_url, params: { student_profile: { address: @student_profile.address, guardian1: @student_profile.guardian1, guardian1_number: @student_profile.guardian1_number, guardian2: @student_profile.guardian2, guardian2_number: @student_profile.guardian2_number, name: @student_profile.name, student_id: @student_profile.student_id } }, as: :json
    end

    assert_response 201
  end

  test "should show student_profile" do
    get student_profile_url(@student_profile), as: :json
    assert_response :success
  end

  test "should update student_profile" do
    patch student_profile_url(@student_profile), params: { student_profile: { address: @student_profile.address, guardian1: @student_profile.guardian1, guardian1_number: @student_profile.guardian1_number, guardian2: @student_profile.guardian2, guardian2_number: @student_profile.guardian2_number, name: @student_profile.name, student_id: @student_profile.student_id } }, as: :json
    assert_response 200
  end

  test "should destroy student_profile" do
    assert_difference('StudentProfile.count', -1) do
      delete student_profile_url(@student_profile), as: :json
    end

    assert_response 204
  end
end
