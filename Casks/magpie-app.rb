cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.547"
  sha256 arm:   "a55680db5ed625b3074891815f9bcffbc296734bf97c837e6aafde50c8e01ee4",
         intel: "e6cc2c34fc94a98f47dba9578c71e8123605ea856ce1e8bd91b357643e73ad98"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
