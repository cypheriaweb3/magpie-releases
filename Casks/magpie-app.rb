cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.471"
  sha256 arm:   "224dbd54cad0cff5d6549e378939c81b410e9b325850ef8c8113e49bb7a488d2",
         intel: "e8243c1a97999ec7c99729936cc685ad73df75d9a3161114914dbf6a2e78e60c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
