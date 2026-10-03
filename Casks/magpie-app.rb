cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.740"
  sha256 arm:   "2af8222700693ce6a05c1890e8f4ed5a578baa5dd1056b380ad6eedd946ba7f1",
         intel: "b949ac8cf89e132c513cf98e6f6c7375316dde83aa1b03fa4e42d345a0f7d646"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
