cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.216"
  sha256 arm:   "522b7851de7a34c70ee5971b492754bc1c327499ffabbcbeb500b439414b9637",
         intel: "267e5af01627e9f5a639e867a51646aa4c963563a69c1284fba6f3646eb733c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
