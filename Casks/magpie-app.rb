cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.446"
  sha256 arm:   "7bbe816c83b7b672a0fb892e5f24209244e70f41fd80aca2b750c158c8040c01",
         intel: "3887351695e6cc79bada931f42811992e8bc0a828b37bdbc0d48a3404b0dfd41"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
