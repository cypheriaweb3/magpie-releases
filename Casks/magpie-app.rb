cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.194"
  sha256 arm:   "2dab146d353d33cb1ce37772fac85b17f98187dfc28fe57de65331349f4a31bc",
         intel: "1e68dc4ce5df01c7f9a386fc675bf5973d24663a75e27e6b482dad2095e52e53"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
