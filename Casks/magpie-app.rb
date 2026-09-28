cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.320"
  sha256 arm:   "062758fd980fd545b50b1142c45ada5fb82888f1f0d936a3b67299921352967a",
         intel: "1095e8573a20fb86b1f557d6bc708b69bd92a1bd08e20550c93d0ed2df53ff07"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
