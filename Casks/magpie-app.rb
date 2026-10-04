cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.859"
  sha256 arm:   "f8056c332a12ff6892201b996dbcde8200cb8ce32d3efc3282a0eabc9dab9c78",
         intel: "59efba894c956d8965f32fb48240df8317e64aaa7cca85f575dba01a20170aab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
