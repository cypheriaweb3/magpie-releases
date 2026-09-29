cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.374"
  sha256 arm:   "fc9239de9a0229626eaf21b969aec6bf6c98564f6591794f20aa2eac4788758c",
         intel: "3aadaf2bc2a9e3f601644ecffbecca204335e6136e383c0be08d3363c6940d7c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
