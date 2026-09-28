cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.228"
  sha256 arm:   "a621212cecbf05f0847091565a9aa8412ec0f66c5c58dba7c3dfc70c39f0e3e7",
         intel: "03104748377469b1caae0516c810f4a7884f4325e1c6de77a069b8b237b8a2f5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
