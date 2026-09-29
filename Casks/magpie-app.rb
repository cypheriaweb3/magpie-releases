cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.416"
  sha256 arm:   "aaa2270d9928bea4c19b31789bb41173d4dad143878e01817b43860a4d830b3c",
         intel: "51c628c81595e6e442a4666cd86467acf5cafe6a8d51349cc1b7890e31edb9f5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
