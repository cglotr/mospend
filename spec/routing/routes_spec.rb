RSpec.describe "Routing" do
  it { should route(:get, "/").to controller: "pages", action: :home }
  it { should route(:get, "/hello").to controller: "pages", action: :hello }
  it { should route(:get, "/login").to controller: "devise/sessions", action: :new }
  it { should route(:get, "/password").to controller: "devise/passwords", action: :new }
  it { should route(:get, "/password/edit").to controller: "devise/passwords", action: :edit }
  it { should route(:get, "/signup").to controller: "devise/registrations", action: :new }
  it { should route(:get, "/wtf").to controller: "pages", action: "not_found", path: :wtf }

  it { should route(:post, "/login").to controller: "devise/sessions", action: :create }
  it { should route(:post, "/password").to controller: "devise/passwords", action: :create }
  it { should route(:post, "/signup").to controller: "devise/registrations", action: :create }

  it { should route(:put, "/password").to controller: "devise/passwords", action: :update }

  it { should route(:delete, "/logout").to controller: "devise/sessions", action: :destroy }
end
