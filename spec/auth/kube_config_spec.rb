# frozen_string_literal: true

RSpec.describe Rubernetes::Auth::KubeConfig do
  context 'using KUBECONFIG ENV variable' do
    ENV['KUBECONFIG'] = File.join(__dir__, '..', 'fixtures', '.kube', 'config')

    it "creates an object of #{described_class}" do
      expect(subject).not_to be_nil
    end

    it "reads api_endpoint" do
      expect(subject.api_endpoint).to eq('SERVER_URL')
    end

    it "sets cert_store in ssl_options" do
      expect(subject.ssl_options[:cert_store]).not_to be_nil
    end

    it "sets auth_options as empty hash" do
      expect(subject.auth_options).to be_empty
    end
  end
end
