cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.548"
  sha256 arm:   "435a3ba52c6a77abe30c451f9f2564512f17c51012c04c6ad76d4b0210eb670c",
         intel: "ae8dad2d0a2a2b27c3a9ecf91a32cdc8dd21b58be476a53e7b37399848d98aef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
