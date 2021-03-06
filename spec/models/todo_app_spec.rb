RSpec.describe TodoApp do

  it "belongs to a user" do
    expect(user.todo_apps.create!(token: "123").user).to eq(user)
  end

  context "without a token" do
    subject do
      user.todo_apps.build
    end

    it { is_expected.to_not be_valid }
  end

  let(:user) do
    user = User.new(
      name: "chuckeles",
      email: "me@chuckeles.me",
      password: "foobaaaz123",
      password_confirmation: "foobaaaz123"
    )
    user.skip_confirmation!
    user.save!
    user
  end

end
