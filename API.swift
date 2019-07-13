//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateEasyGrocListItemsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String, date: Int, masterList: String, userId: String, add: Bool) {
    graphQLMap = ["name": name, "date": date, "masterList": masterList, "userID": userId, "add": add]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var date: Int {
    get {
      return graphQLMap["date"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var masterList: String {
    get {
      return graphQLMap["masterList"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "masterList")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var add: Bool {
    get {
      return graphQLMap["add"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "add")
    }
  }
}

public struct UpdateEasyGrocListItemsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String, date: Int? = nil, masterList: String, userId: String, add: Bool? = nil) {
    graphQLMap = ["name": name, "date": date, "masterList": masterList, "userID": userId, "add": add]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var date: Int? {
    get {
      return graphQLMap["date"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var masterList: String {
    get {
      return graphQLMap["masterList"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "masterList")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var add: Bool? {
    get {
      return graphQLMap["add"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "add")
    }
  }
}

public struct DeleteEasyGrocListItemsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: String, name: String, masterList: String) {
    graphQLMap = ["userID": userId, "name": name, "masterList": masterList]
  }

  public var userId: String {
    get {
      return graphQLMap["userID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var masterList: String {
    get {
      return graphQLMap["masterList"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "masterList")
    }
  }
}

public struct CreateUserInfoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(shareId: Int, date: Int, userId: String, verified: Bool, placeholder1: String? = nil, placeholder2: String? = nil, placeholder3: String? = nil) {
    graphQLMap = ["share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3]
  }

  public var shareId: Int {
    get {
      return graphQLMap["share_id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "share_id")
    }
  }

  public var date: Int {
    get {
      return graphQLMap["date"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var verified: Bool {
    get {
      return graphQLMap["verified"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "verified")
    }
  }

  public var placeholder1: String? {
    get {
      return graphQLMap["placeholder1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "placeholder1")
    }
  }

  public var placeholder2: String? {
    get {
      return graphQLMap["placeholder2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "placeholder2")
    }
  }

  public var placeholder3: String? {
    get {
      return graphQLMap["placeholder3"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "placeholder3")
    }
  }
}

public struct UpdateUserInfoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(shareId: Int? = nil, date: Int? = nil, userId: String, verified: Bool? = nil, placeholder1: String? = nil, placeholder2: String? = nil, placeholder3: String? = nil) {
    graphQLMap = ["share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3]
  }

  public var shareId: Int? {
    get {
      return graphQLMap["share_id"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "share_id")
    }
  }

  public var date: Int? {
    get {
      return graphQLMap["date"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var verified: Bool? {
    get {
      return graphQLMap["verified"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "verified")
    }
  }

  public var placeholder1: String? {
    get {
      return graphQLMap["placeholder1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "placeholder1")
    }
  }

  public var placeholder2: String? {
    get {
      return graphQLMap["placeholder2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "placeholder2")
    }
  }

  public var placeholder3: String? {
    get {
      return graphQLMap["placeholder3"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "placeholder3")
    }
  }
}

public struct DeleteUserInfoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: String) {
    graphQLMap = ["userID": userId]
  }

  public var userId: String {
    get {
      return graphQLMap["userID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }
}

public struct CreateAccountLinkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(code: Int, date: Int, userId: String) {
    graphQLMap = ["code": code, "date": date, "userID": userId]
  }

  public var code: Int {
    get {
      return graphQLMap["code"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "code")
    }
  }

  public var date: Int {
    get {
      return graphQLMap["date"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }
}

public struct UpdateAccountLinkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(code: Int, date: Int? = nil, userId: String? = nil) {
    graphQLMap = ["code": code, "date": date, "userID": userId]
  }

  public var code: Int {
    get {
      return graphQLMap["code"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "code")
    }
  }

  public var date: Int? {
    get {
      return graphQLMap["date"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var userId: String? {
    get {
      return graphQLMap["userID"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }
}

public struct DeleteAccountLinkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(code: Int) {
    graphQLMap = ["code": code]
  }

  public var code: Int {
    get {
      return graphQLMap["code"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "code")
    }
  }
}

public struct ModelEasyGrocListItemsPrimaryCompositeKeyConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(eq: ModelEasyGrocListItemsPrimaryCompositeKeyInput? = nil, le: ModelEasyGrocListItemsPrimaryCompositeKeyInput? = nil, lt: ModelEasyGrocListItemsPrimaryCompositeKeyInput? = nil, ge: ModelEasyGrocListItemsPrimaryCompositeKeyInput? = nil, gt: ModelEasyGrocListItemsPrimaryCompositeKeyInput? = nil, between: [ModelEasyGrocListItemsPrimaryCompositeKeyInput?]? = nil, beginsWith: ModelEasyGrocListItemsPrimaryCompositeKeyInput? = nil) {
    graphQLMap = ["eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "beginsWith": beginsWith]
  }

  public var eq: ModelEasyGrocListItemsPrimaryCompositeKeyInput? {
    get {
      return graphQLMap["eq"] as! ModelEasyGrocListItemsPrimaryCompositeKeyInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: ModelEasyGrocListItemsPrimaryCompositeKeyInput? {
    get {
      return graphQLMap["le"] as! ModelEasyGrocListItemsPrimaryCompositeKeyInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: ModelEasyGrocListItemsPrimaryCompositeKeyInput? {
    get {
      return graphQLMap["lt"] as! ModelEasyGrocListItemsPrimaryCompositeKeyInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: ModelEasyGrocListItemsPrimaryCompositeKeyInput? {
    get {
      return graphQLMap["ge"] as! ModelEasyGrocListItemsPrimaryCompositeKeyInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: ModelEasyGrocListItemsPrimaryCompositeKeyInput? {
    get {
      return graphQLMap["gt"] as! ModelEasyGrocListItemsPrimaryCompositeKeyInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [ModelEasyGrocListItemsPrimaryCompositeKeyInput?]? {
    get {
      return graphQLMap["between"] as! [ModelEasyGrocListItemsPrimaryCompositeKeyInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: ModelEasyGrocListItemsPrimaryCompositeKeyInput? {
    get {
      return graphQLMap["beginsWith"] as! ModelEasyGrocListItemsPrimaryCompositeKeyInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct ModelEasyGrocListItemsPrimaryCompositeKeyInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String? = nil, masterList: String? = nil) {
    graphQLMap = ["name": name, "masterList": masterList]
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var masterList: String? {
    get {
      return graphQLMap["masterList"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "masterList")
    }
  }
}

public struct ModelEasyGrocListItemsFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringFilterInput? = nil, date: ModelIntFilterInput? = nil, masterList: ModelStringFilterInput? = nil, userId: ModelStringFilterInput? = nil, add: ModelBooleanFilterInput? = nil, and: [ModelEasyGrocListItemsFilterInput?]? = nil, or: [ModelEasyGrocListItemsFilterInput?]? = nil, not: ModelEasyGrocListItemsFilterInput? = nil) {
    graphQLMap = ["name": name, "date": date, "masterList": masterList, "userID": userId, "add": add, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringFilterInput? {
    get {
      return graphQLMap["name"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var date: ModelIntFilterInput? {
    get {
      return graphQLMap["date"] as! ModelIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var masterList: ModelStringFilterInput? {
    get {
      return graphQLMap["masterList"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "masterList")
    }
  }

  public var userId: ModelStringFilterInput? {
    get {
      return graphQLMap["userID"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var add: ModelBooleanFilterInput? {
    get {
      return graphQLMap["add"] as! ModelBooleanFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "add")
    }
  }

  public var and: [ModelEasyGrocListItemsFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelEasyGrocListItemsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelEasyGrocListItemsFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelEasyGrocListItemsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelEasyGrocListItemsFilterInput? {
    get {
      return graphQLMap["not"] as! ModelEasyGrocListItemsFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct ModelIntFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, contains: Int? = nil, notContains: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Int? {
    get {
      return graphQLMap["contains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Int? {
    get {
      return graphQLMap["notContains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelBooleanFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Bool? = nil, eq: Bool? = nil) {
    graphQLMap = ["ne": ne, "eq": eq]
  }

  public var ne: Bool? {
    get {
      return graphQLMap["ne"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Bool? {
    get {
      return graphQLMap["eq"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }
}

public struct ModelUserInfoFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(shareId: ModelIntFilterInput? = nil, date: ModelIntFilterInput? = nil, userId: ModelStringFilterInput? = nil, verified: ModelBooleanFilterInput? = nil, placeholder1: ModelStringFilterInput? = nil, placeholder2: ModelStringFilterInput? = nil, placeholder3: ModelStringFilterInput? = nil, and: [ModelUserInfoFilterInput?]? = nil, or: [ModelUserInfoFilterInput?]? = nil, not: ModelUserInfoFilterInput? = nil) {
    graphQLMap = ["share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3, "and": and, "or": or, "not": not]
  }

  public var shareId: ModelIntFilterInput? {
    get {
      return graphQLMap["share_id"] as! ModelIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "share_id")
    }
  }

  public var date: ModelIntFilterInput? {
    get {
      return graphQLMap["date"] as! ModelIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var userId: ModelStringFilterInput? {
    get {
      return graphQLMap["userID"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var verified: ModelBooleanFilterInput? {
    get {
      return graphQLMap["verified"] as! ModelBooleanFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "verified")
    }
  }

  public var placeholder1: ModelStringFilterInput? {
    get {
      return graphQLMap["placeholder1"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "placeholder1")
    }
  }

  public var placeholder2: ModelStringFilterInput? {
    get {
      return graphQLMap["placeholder2"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "placeholder2")
    }
  }

  public var placeholder3: ModelStringFilterInput? {
    get {
      return graphQLMap["placeholder3"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "placeholder3")
    }
  }

  public var and: [ModelUserInfoFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserInfoFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserInfoFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserInfoFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserInfoFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserInfoFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelAccountLinkFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(code: ModelIntFilterInput? = nil, date: ModelIntFilterInput? = nil, userId: ModelStringFilterInput? = nil, and: [ModelAccountLinkFilterInput?]? = nil, or: [ModelAccountLinkFilterInput?]? = nil, not: ModelAccountLinkFilterInput? = nil) {
    graphQLMap = ["code": code, "date": date, "userID": userId, "and": and, "or": or, "not": not]
  }

  public var code: ModelIntFilterInput? {
    get {
      return graphQLMap["code"] as! ModelIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "code")
    }
  }

  public var date: ModelIntFilterInput? {
    get {
      return graphQLMap["date"] as! ModelIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var userId: ModelStringFilterInput? {
    get {
      return graphQLMap["userID"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var and: [ModelAccountLinkFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelAccountLinkFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelAccountLinkFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelAccountLinkFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelAccountLinkFilterInput? {
    get {
      return graphQLMap["not"] as! ModelAccountLinkFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateEasyGrocListItemsMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateEasyGrocListItems($input: CreateEasyGrocListItemsInput!) {\n  createEasyGrocListItems(input: $input) {\n    __typename\n    name\n    date\n    masterList\n    userID\n    add\n  }\n}"

  public var input: CreateEasyGrocListItemsInput

  public init(input: CreateEasyGrocListItemsInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createEasyGrocListItems", arguments: ["input": GraphQLVariable("input")], type: .object(CreateEasyGrocListItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createEasyGrocListItems: CreateEasyGrocListItem? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createEasyGrocListItems": createEasyGrocListItems.flatMap { $0.snapshot }])
    }

    public var createEasyGrocListItems: CreateEasyGrocListItem? {
      get {
        return (snapshot["createEasyGrocListItems"] as? Snapshot).flatMap { CreateEasyGrocListItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createEasyGrocListItems")
      }
    }

    public struct CreateEasyGrocListItem: GraphQLSelectionSet {
      public static let possibleTypes = ["EasyGrocListItems"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("masterList", type: .nonNull(.scalar(String.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("add", type: .nonNull(.scalar(Bool.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, date: Int, masterList: String, userId: String, add: Bool) {
        self.init(snapshot: ["__typename": "EasyGrocListItems", "name": name, "date": date, "masterList": masterList, "userID": userId, "add": add])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var masterList: String {
        get {
          return snapshot["masterList"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "masterList")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var add: Bool {
        get {
          return snapshot["add"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "add")
        }
      }
    }
  }
}

public final class UpdateEasyGrocListItemsMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateEasyGrocListItems($input: UpdateEasyGrocListItemsInput!) {\n  updateEasyGrocListItems(input: $input) {\n    __typename\n    name\n    date\n    masterList\n    userID\n    add\n  }\n}"

  public var input: UpdateEasyGrocListItemsInput

  public init(input: UpdateEasyGrocListItemsInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateEasyGrocListItems", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateEasyGrocListItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateEasyGrocListItems: UpdateEasyGrocListItem? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateEasyGrocListItems": updateEasyGrocListItems.flatMap { $0.snapshot }])
    }

    public var updateEasyGrocListItems: UpdateEasyGrocListItem? {
      get {
        return (snapshot["updateEasyGrocListItems"] as? Snapshot).flatMap { UpdateEasyGrocListItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateEasyGrocListItems")
      }
    }

    public struct UpdateEasyGrocListItem: GraphQLSelectionSet {
      public static let possibleTypes = ["EasyGrocListItems"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("masterList", type: .nonNull(.scalar(String.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("add", type: .nonNull(.scalar(Bool.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, date: Int, masterList: String, userId: String, add: Bool) {
        self.init(snapshot: ["__typename": "EasyGrocListItems", "name": name, "date": date, "masterList": masterList, "userID": userId, "add": add])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var masterList: String {
        get {
          return snapshot["masterList"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "masterList")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var add: Bool {
        get {
          return snapshot["add"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "add")
        }
      }
    }
  }
}

public final class DeleteEasyGrocListItemsMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteEasyGrocListItems($input: DeleteEasyGrocListItemsInput!) {\n  deleteEasyGrocListItems(input: $input) {\n    __typename\n    name\n    date\n    masterList\n    userID\n    add\n  }\n}"

  public var input: DeleteEasyGrocListItemsInput

  public init(input: DeleteEasyGrocListItemsInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteEasyGrocListItems", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteEasyGrocListItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteEasyGrocListItems: DeleteEasyGrocListItem? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteEasyGrocListItems": deleteEasyGrocListItems.flatMap { $0.snapshot }])
    }

    public var deleteEasyGrocListItems: DeleteEasyGrocListItem? {
      get {
        return (snapshot["deleteEasyGrocListItems"] as? Snapshot).flatMap { DeleteEasyGrocListItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteEasyGrocListItems")
      }
    }

    public struct DeleteEasyGrocListItem: GraphQLSelectionSet {
      public static let possibleTypes = ["EasyGrocListItems"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("masterList", type: .nonNull(.scalar(String.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("add", type: .nonNull(.scalar(Bool.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, date: Int, masterList: String, userId: String, add: Bool) {
        self.init(snapshot: ["__typename": "EasyGrocListItems", "name": name, "date": date, "masterList": masterList, "userID": userId, "add": add])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var masterList: String {
        get {
          return snapshot["masterList"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "masterList")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var add: Bool {
        get {
          return snapshot["add"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "add")
        }
      }
    }
  }
}

public final class CreateUserInfoMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUserInfo($input: CreateUserInfoInput!) {\n  createUserInfo(input: $input) {\n    __typename\n    share_id\n    date\n    userID\n    verified\n    placeholder1\n    placeholder2\n    placeholder3\n  }\n}"

  public var input: CreateUserInfoInput

  public init(input: CreateUserInfoInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUserInfo", arguments: ["input": GraphQLVariable("input")], type: .object(CreateUserInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUserInfo: CreateUserInfo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUserInfo": createUserInfo.flatMap { $0.snapshot }])
    }

    public var createUserInfo: CreateUserInfo? {
      get {
        return (snapshot["createUserInfo"] as? Snapshot).flatMap { CreateUserInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUserInfo")
      }
    }

    public struct CreateUserInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["UserInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("share_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("verified", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("placeholder1", type: .scalar(String.self)),
        GraphQLField("placeholder2", type: .scalar(String.self)),
        GraphQLField("placeholder3", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: Int, date: Int, userId: String, verified: Bool, placeholder1: String? = nil, placeholder2: String? = nil, placeholder3: String? = nil) {
        self.init(snapshot: ["__typename": "UserInfo", "share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: Int {
        get {
          return snapshot["share_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "share_id")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var verified: Bool {
        get {
          return snapshot["verified"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "verified")
        }
      }

      public var placeholder1: String? {
        get {
          return snapshot["placeholder1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder1")
        }
      }

      public var placeholder2: String? {
        get {
          return snapshot["placeholder2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder2")
        }
      }

      public var placeholder3: String? {
        get {
          return snapshot["placeholder3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder3")
        }
      }
    }
  }
}

public final class UpdateUserInfoMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUserInfo($input: UpdateUserInfoInput!) {\n  updateUserInfo(input: $input) {\n    __typename\n    share_id\n    date\n    userID\n    verified\n    placeholder1\n    placeholder2\n    placeholder3\n  }\n}"

  public var input: UpdateUserInfoInput

  public init(input: UpdateUserInfoInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUserInfo", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateUserInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUserInfo: UpdateUserInfo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUserInfo": updateUserInfo.flatMap { $0.snapshot }])
    }

    public var updateUserInfo: UpdateUserInfo? {
      get {
        return (snapshot["updateUserInfo"] as? Snapshot).flatMap { UpdateUserInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUserInfo")
      }
    }

    public struct UpdateUserInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["UserInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("share_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("verified", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("placeholder1", type: .scalar(String.self)),
        GraphQLField("placeholder2", type: .scalar(String.self)),
        GraphQLField("placeholder3", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: Int, date: Int, userId: String, verified: Bool, placeholder1: String? = nil, placeholder2: String? = nil, placeholder3: String? = nil) {
        self.init(snapshot: ["__typename": "UserInfo", "share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: Int {
        get {
          return snapshot["share_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "share_id")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var verified: Bool {
        get {
          return snapshot["verified"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "verified")
        }
      }

      public var placeholder1: String? {
        get {
          return snapshot["placeholder1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder1")
        }
      }

      public var placeholder2: String? {
        get {
          return snapshot["placeholder2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder2")
        }
      }

      public var placeholder3: String? {
        get {
          return snapshot["placeholder3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder3")
        }
      }
    }
  }
}

public final class DeleteUserInfoMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUserInfo($input: DeleteUserInfoInput!) {\n  deleteUserInfo(input: $input) {\n    __typename\n    share_id\n    date\n    userID\n    verified\n    placeholder1\n    placeholder2\n    placeholder3\n  }\n}"

  public var input: DeleteUserInfoInput

  public init(input: DeleteUserInfoInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUserInfo", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteUserInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUserInfo: DeleteUserInfo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUserInfo": deleteUserInfo.flatMap { $0.snapshot }])
    }

    public var deleteUserInfo: DeleteUserInfo? {
      get {
        return (snapshot["deleteUserInfo"] as? Snapshot).flatMap { DeleteUserInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUserInfo")
      }
    }

    public struct DeleteUserInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["UserInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("share_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("verified", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("placeholder1", type: .scalar(String.self)),
        GraphQLField("placeholder2", type: .scalar(String.self)),
        GraphQLField("placeholder3", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: Int, date: Int, userId: String, verified: Bool, placeholder1: String? = nil, placeholder2: String? = nil, placeholder3: String? = nil) {
        self.init(snapshot: ["__typename": "UserInfo", "share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: Int {
        get {
          return snapshot["share_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "share_id")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var verified: Bool {
        get {
          return snapshot["verified"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "verified")
        }
      }

      public var placeholder1: String? {
        get {
          return snapshot["placeholder1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder1")
        }
      }

      public var placeholder2: String? {
        get {
          return snapshot["placeholder2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder2")
        }
      }

      public var placeholder3: String? {
        get {
          return snapshot["placeholder3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder3")
        }
      }
    }
  }
}

public final class CreateAccountLinkMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateAccountLink($input: CreateAccountLinkInput!) {\n  createAccountLink(input: $input) {\n    __typename\n    code\n    date\n    userID\n  }\n}"

  public var input: CreateAccountLinkInput

  public init(input: CreateAccountLinkInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createAccountLink", arguments: ["input": GraphQLVariable("input")], type: .object(CreateAccountLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createAccountLink: CreateAccountLink? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createAccountLink": createAccountLink.flatMap { $0.snapshot }])
    }

    public var createAccountLink: CreateAccountLink? {
      get {
        return (snapshot["createAccountLink"] as? Snapshot).flatMap { CreateAccountLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createAccountLink")
      }
    }

    public struct CreateAccountLink: GraphQLSelectionSet {
      public static let possibleTypes = ["AccountLink"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("code", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(code: Int, date: Int, userId: String) {
        self.init(snapshot: ["__typename": "AccountLink", "code": code, "date": date, "userID": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var code: Int {
        get {
          return snapshot["code"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "code")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }
    }
  }
}

public final class UpdateAccountLinkMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateAccountLink($input: UpdateAccountLinkInput!) {\n  updateAccountLink(input: $input) {\n    __typename\n    code\n    date\n    userID\n  }\n}"

  public var input: UpdateAccountLinkInput

  public init(input: UpdateAccountLinkInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateAccountLink", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateAccountLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateAccountLink: UpdateAccountLink? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateAccountLink": updateAccountLink.flatMap { $0.snapshot }])
    }

    public var updateAccountLink: UpdateAccountLink? {
      get {
        return (snapshot["updateAccountLink"] as? Snapshot).flatMap { UpdateAccountLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateAccountLink")
      }
    }

    public struct UpdateAccountLink: GraphQLSelectionSet {
      public static let possibleTypes = ["AccountLink"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("code", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(code: Int, date: Int, userId: String) {
        self.init(snapshot: ["__typename": "AccountLink", "code": code, "date": date, "userID": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var code: Int {
        get {
          return snapshot["code"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "code")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }
    }
  }
}

public final class DeleteAccountLinkMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteAccountLink($input: DeleteAccountLinkInput!) {\n  deleteAccountLink(input: $input) {\n    __typename\n    code\n    date\n    userID\n  }\n}"

  public var input: DeleteAccountLinkInput

  public init(input: DeleteAccountLinkInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteAccountLink", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteAccountLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteAccountLink: DeleteAccountLink? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteAccountLink": deleteAccountLink.flatMap { $0.snapshot }])
    }

    public var deleteAccountLink: DeleteAccountLink? {
      get {
        return (snapshot["deleteAccountLink"] as? Snapshot).flatMap { DeleteAccountLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteAccountLink")
      }
    }

    public struct DeleteAccountLink: GraphQLSelectionSet {
      public static let possibleTypes = ["AccountLink"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("code", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(code: Int, date: Int, userId: String) {
        self.init(snapshot: ["__typename": "AccountLink", "code": code, "date": date, "userID": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var code: Int {
        get {
          return snapshot["code"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "code")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }
    }
  }
}

public final class ItemsByUserIdQuery: GraphQLQuery {
  public static let operationString =
    "query ItemsByUserId($userID: String!) {\n  itemsByUserID(userID: $userID) {\n    __typename\n    name\n    date\n    masterList\n    userID\n    add\n  }\n}"

  public var userID: String

  public init(userID: String) {
    self.userID = userID
  }

  public var variables: GraphQLMap? {
    return ["userID": userID]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("itemsByUserID", arguments: ["userID": GraphQLVariable("userID")], type: .list(.object(ItemsByUserId.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(itemsByUserId: [ItemsByUserId?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "itemsByUserID": itemsByUserId.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
    }

    public var itemsByUserId: [ItemsByUserId?]? {
      get {
        return (snapshot["itemsByUserID"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { ItemsByUserId(snapshot: $0) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "itemsByUserID")
      }
    }

    public struct ItemsByUserId: GraphQLSelectionSet {
      public static let possibleTypes = ["EasyGrocListItems"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("masterList", type: .nonNull(.scalar(String.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("add", type: .nonNull(.scalar(Bool.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, date: Int, masterList: String, userId: String, add: Bool) {
        self.init(snapshot: ["__typename": "EasyGrocListItems", "name": name, "date": date, "masterList": masterList, "userID": userId, "add": add])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var masterList: String {
        get {
          return snapshot["masterList"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "masterList")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var add: Bool {
        get {
          return snapshot["add"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "add")
        }
      }
    }
  }
}

public final class GetEasyGrocListItemsQuery: GraphQLQuery {
  public static let operationString =
    "query GetEasyGrocListItems($userID: String!, $name: String!, $masterList: String!) {\n  getEasyGrocListItems(userID: $userID, name: $name, masterList: $masterList) {\n    __typename\n    name\n    date\n    masterList\n    userID\n    add\n  }\n}"

  public var userID: String
  public var name: String
  public var masterList: String

  public init(userID: String, name: String, masterList: String) {
    self.userID = userID
    self.name = name
    self.masterList = masterList
  }

  public var variables: GraphQLMap? {
    return ["userID": userID, "name": name, "masterList": masterList]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getEasyGrocListItems", arguments: ["userID": GraphQLVariable("userID"), "name": GraphQLVariable("name"), "masterList": GraphQLVariable("masterList")], type: .object(GetEasyGrocListItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getEasyGrocListItems: GetEasyGrocListItem? = nil) {
      self.init(snapshot: ["__typename": "Query", "getEasyGrocListItems": getEasyGrocListItems.flatMap { $0.snapshot }])
    }

    public var getEasyGrocListItems: GetEasyGrocListItem? {
      get {
        return (snapshot["getEasyGrocListItems"] as? Snapshot).flatMap { GetEasyGrocListItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getEasyGrocListItems")
      }
    }

    public struct GetEasyGrocListItem: GraphQLSelectionSet {
      public static let possibleTypes = ["EasyGrocListItems"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("masterList", type: .nonNull(.scalar(String.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("add", type: .nonNull(.scalar(Bool.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, date: Int, masterList: String, userId: String, add: Bool) {
        self.init(snapshot: ["__typename": "EasyGrocListItems", "name": name, "date": date, "masterList": masterList, "userID": userId, "add": add])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var masterList: String {
        get {
          return snapshot["masterList"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "masterList")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var add: Bool {
        get {
          return snapshot["add"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "add")
        }
      }
    }
  }
}

public final class ListEasyGrocListItemssQuery: GraphQLQuery {
  public static let operationString =
    "query ListEasyGrocListItemss($userID: String, $nameMasterList: ModelEasyGrocListItemsPrimaryCompositeKeyConditionInput, $filter: ModelEasyGrocListItemsFilterInput, $limit: Int, $nextToken: String) {\n  listEasyGrocListItemss(userID: $userID, nameMasterList: $nameMasterList, filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      name\n      date\n      masterList\n      userID\n      add\n    }\n    nextToken\n  }\n}"

  public var userID: String?
  public var nameMasterList: ModelEasyGrocListItemsPrimaryCompositeKeyConditionInput?
  public var filter: ModelEasyGrocListItemsFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(userID: String? = nil, nameMasterList: ModelEasyGrocListItemsPrimaryCompositeKeyConditionInput? = nil, filter: ModelEasyGrocListItemsFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.userID = userID
    self.nameMasterList = nameMasterList
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["userID": userID, "nameMasterList": nameMasterList, "filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listEasyGrocListItemss", arguments: ["userID": GraphQLVariable("userID"), "nameMasterList": GraphQLVariable("nameMasterList"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListEasyGrocListItemss.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listEasyGrocListItemss: ListEasyGrocListItemss? = nil) {
      self.init(snapshot: ["__typename": "Query", "listEasyGrocListItemss": listEasyGrocListItemss.flatMap { $0.snapshot }])
    }

    public var listEasyGrocListItemss: ListEasyGrocListItemss? {
      get {
        return (snapshot["listEasyGrocListItemss"] as? Snapshot).flatMap { ListEasyGrocListItemss(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listEasyGrocListItemss")
      }
    }

    public struct ListEasyGrocListItemss: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelEasyGrocListItemsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelEasyGrocListItemsConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["EasyGrocListItems"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("date", type: .nonNull(.scalar(Int.self))),
          GraphQLField("masterList", type: .nonNull(.scalar(String.self))),
          GraphQLField("userID", type: .nonNull(.scalar(String.self))),
          GraphQLField("add", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String, date: Int, masterList: String, userId: String, add: Bool) {
          self.init(snapshot: ["__typename": "EasyGrocListItems", "name": name, "date": date, "masterList": masterList, "userID": userId, "add": add])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var date: Int {
          get {
            return snapshot["date"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var masterList: String {
          get {
            return snapshot["masterList"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "masterList")
          }
        }

        public var userId: String {
          get {
            return snapshot["userID"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var add: Bool {
          get {
            return snapshot["add"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "add")
          }
        }
      }
    }
  }
}

public final class GetUserInfoQuery: GraphQLQuery {
  public static let operationString =
    "query GetUserInfo($userID: String!) {\n  getUserInfo(userID: $userID) {\n    __typename\n    share_id\n    date\n    userID\n    verified\n    placeholder1\n    placeholder2\n    placeholder3\n  }\n}"

  public var userID: String

  public init(userID: String) {
    self.userID = userID
  }

  public var variables: GraphQLMap? {
    return ["userID": userID]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUserInfo", arguments: ["userID": GraphQLVariable("userID")], type: .object(GetUserInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUserInfo: GetUserInfo? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUserInfo": getUserInfo.flatMap { $0.snapshot }])
    }

    public var getUserInfo: GetUserInfo? {
      get {
        return (snapshot["getUserInfo"] as? Snapshot).flatMap { GetUserInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUserInfo")
      }
    }

    public struct GetUserInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["UserInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("share_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("verified", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("placeholder1", type: .scalar(String.self)),
        GraphQLField("placeholder2", type: .scalar(String.self)),
        GraphQLField("placeholder3", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: Int, date: Int, userId: String, verified: Bool, placeholder1: String? = nil, placeholder2: String? = nil, placeholder3: String? = nil) {
        self.init(snapshot: ["__typename": "UserInfo", "share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: Int {
        get {
          return snapshot["share_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "share_id")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var verified: Bool {
        get {
          return snapshot["verified"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "verified")
        }
      }

      public var placeholder1: String? {
        get {
          return snapshot["placeholder1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder1")
        }
      }

      public var placeholder2: String? {
        get {
          return snapshot["placeholder2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder2")
        }
      }

      public var placeholder3: String? {
        get {
          return snapshot["placeholder3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder3")
        }
      }
    }
  }
}

public final class ListUserInfosQuery: GraphQLQuery {
  public static let operationString =
    "query ListUserInfos($userID: String, $filter: ModelUserInfoFilterInput, $limit: Int, $nextToken: String) {\n  listUserInfos(userID: $userID, filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      share_id\n      date\n      userID\n      verified\n      placeholder1\n      placeholder2\n      placeholder3\n    }\n    nextToken\n  }\n}"

  public var userID: String?
  public var filter: ModelUserInfoFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(userID: String? = nil, filter: ModelUserInfoFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.userID = userID
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["userID": userID, "filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUserInfos", arguments: ["userID": GraphQLVariable("userID"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUserInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUserInfos: ListUserInfo? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUserInfos": listUserInfos.flatMap { $0.snapshot }])
    }

    public var listUserInfos: ListUserInfo? {
      get {
        return (snapshot["listUserInfos"] as? Snapshot).flatMap { ListUserInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUserInfos")
      }
    }

    public struct ListUserInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserInfoConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserInfoConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["UserInfo"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("share_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("date", type: .nonNull(.scalar(Int.self))),
          GraphQLField("userID", type: .nonNull(.scalar(String.self))),
          GraphQLField("verified", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("placeholder1", type: .scalar(String.self)),
          GraphQLField("placeholder2", type: .scalar(String.self)),
          GraphQLField("placeholder3", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(shareId: Int, date: Int, userId: String, verified: Bool, placeholder1: String? = nil, placeholder2: String? = nil, placeholder3: String? = nil) {
          self.init(snapshot: ["__typename": "UserInfo", "share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var shareId: Int {
          get {
            return snapshot["share_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "share_id")
          }
        }

        public var date: Int {
          get {
            return snapshot["date"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var userId: String {
          get {
            return snapshot["userID"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var verified: Bool {
          get {
            return snapshot["verified"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "verified")
          }
        }

        public var placeholder1: String? {
          get {
            return snapshot["placeholder1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "placeholder1")
          }
        }

        public var placeholder2: String? {
          get {
            return snapshot["placeholder2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "placeholder2")
          }
        }

        public var placeholder3: String? {
          get {
            return snapshot["placeholder3"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "placeholder3")
          }
        }
      }
    }
  }
}

public final class GetAccountLinkQuery: GraphQLQuery {
  public static let operationString =
    "query GetAccountLink($code: Int!) {\n  getAccountLink(code: $code) {\n    __typename\n    code\n    date\n    userID\n  }\n}"

  public var code: Int

  public init(code: Int) {
    self.code = code
  }

  public var variables: GraphQLMap? {
    return ["code": code]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getAccountLink", arguments: ["code": GraphQLVariable("code")], type: .object(GetAccountLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getAccountLink: GetAccountLink? = nil) {
      self.init(snapshot: ["__typename": "Query", "getAccountLink": getAccountLink.flatMap { $0.snapshot }])
    }

    public var getAccountLink: GetAccountLink? {
      get {
        return (snapshot["getAccountLink"] as? Snapshot).flatMap { GetAccountLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getAccountLink")
      }
    }

    public struct GetAccountLink: GraphQLSelectionSet {
      public static let possibleTypes = ["AccountLink"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("code", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(code: Int, date: Int, userId: String) {
        self.init(snapshot: ["__typename": "AccountLink", "code": code, "date": date, "userID": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var code: Int {
        get {
          return snapshot["code"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "code")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }
    }
  }
}

public final class ListAccountLinksQuery: GraphQLQuery {
  public static let operationString =
    "query ListAccountLinks($code: Int, $filter: ModelAccountLinkFilterInput, $limit: Int, $nextToken: String) {\n  listAccountLinks(code: $code, filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      code\n      date\n      userID\n    }\n    nextToken\n  }\n}"

  public var code: Int?
  public var filter: ModelAccountLinkFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(code: Int? = nil, filter: ModelAccountLinkFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.code = code
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["code": code, "filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listAccountLinks", arguments: ["code": GraphQLVariable("code"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListAccountLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listAccountLinks: ListAccountLink? = nil) {
      self.init(snapshot: ["__typename": "Query", "listAccountLinks": listAccountLinks.flatMap { $0.snapshot }])
    }

    public var listAccountLinks: ListAccountLink? {
      get {
        return (snapshot["listAccountLinks"] as? Snapshot).flatMap { ListAccountLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listAccountLinks")
      }
    }

    public struct ListAccountLink: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelAccountLinkConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelAccountLinkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["AccountLink"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("code", type: .nonNull(.scalar(Int.self))),
          GraphQLField("date", type: .nonNull(.scalar(Int.self))),
          GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(code: Int, date: Int, userId: String) {
          self.init(snapshot: ["__typename": "AccountLink", "code": code, "date": date, "userID": userId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var code: Int {
          get {
            return snapshot["code"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "code")
          }
        }

        public var date: Int {
          get {
            return snapshot["date"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var userId: String {
          get {
            return snapshot["userID"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }
      }
    }
  }
}

public final class OnCreateEasyGrocListItemsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateEasyGrocListItems {\n  onCreateEasyGrocListItems {\n    __typename\n    name\n    date\n    masterList\n    userID\n    add\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateEasyGrocListItems", type: .object(OnCreateEasyGrocListItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateEasyGrocListItems: OnCreateEasyGrocListItem? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateEasyGrocListItems": onCreateEasyGrocListItems.flatMap { $0.snapshot }])
    }

    public var onCreateEasyGrocListItems: OnCreateEasyGrocListItem? {
      get {
        return (snapshot["onCreateEasyGrocListItems"] as? Snapshot).flatMap { OnCreateEasyGrocListItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateEasyGrocListItems")
      }
    }

    public struct OnCreateEasyGrocListItem: GraphQLSelectionSet {
      public static let possibleTypes = ["EasyGrocListItems"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("masterList", type: .nonNull(.scalar(String.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("add", type: .nonNull(.scalar(Bool.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, date: Int, masterList: String, userId: String, add: Bool) {
        self.init(snapshot: ["__typename": "EasyGrocListItems", "name": name, "date": date, "masterList": masterList, "userID": userId, "add": add])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var masterList: String {
        get {
          return snapshot["masterList"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "masterList")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var add: Bool {
        get {
          return snapshot["add"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "add")
        }
      }
    }
  }
}

public final class OnUpdateEasyGrocListItemsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateEasyGrocListItems {\n  onUpdateEasyGrocListItems {\n    __typename\n    name\n    date\n    masterList\n    userID\n    add\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateEasyGrocListItems", type: .object(OnUpdateEasyGrocListItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateEasyGrocListItems: OnUpdateEasyGrocListItem? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateEasyGrocListItems": onUpdateEasyGrocListItems.flatMap { $0.snapshot }])
    }

    public var onUpdateEasyGrocListItems: OnUpdateEasyGrocListItem? {
      get {
        return (snapshot["onUpdateEasyGrocListItems"] as? Snapshot).flatMap { OnUpdateEasyGrocListItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateEasyGrocListItems")
      }
    }

    public struct OnUpdateEasyGrocListItem: GraphQLSelectionSet {
      public static let possibleTypes = ["EasyGrocListItems"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("masterList", type: .nonNull(.scalar(String.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("add", type: .nonNull(.scalar(Bool.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, date: Int, masterList: String, userId: String, add: Bool) {
        self.init(snapshot: ["__typename": "EasyGrocListItems", "name": name, "date": date, "masterList": masterList, "userID": userId, "add": add])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var masterList: String {
        get {
          return snapshot["masterList"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "masterList")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var add: Bool {
        get {
          return snapshot["add"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "add")
        }
      }
    }
  }
}

public final class OnDeleteEasyGrocListItemsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteEasyGrocListItems {\n  onDeleteEasyGrocListItems {\n    __typename\n    name\n    date\n    masterList\n    userID\n    add\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteEasyGrocListItems", type: .object(OnDeleteEasyGrocListItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteEasyGrocListItems: OnDeleteEasyGrocListItem? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteEasyGrocListItems": onDeleteEasyGrocListItems.flatMap { $0.snapshot }])
    }

    public var onDeleteEasyGrocListItems: OnDeleteEasyGrocListItem? {
      get {
        return (snapshot["onDeleteEasyGrocListItems"] as? Snapshot).flatMap { OnDeleteEasyGrocListItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteEasyGrocListItems")
      }
    }

    public struct OnDeleteEasyGrocListItem: GraphQLSelectionSet {
      public static let possibleTypes = ["EasyGrocListItems"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("masterList", type: .nonNull(.scalar(String.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("add", type: .nonNull(.scalar(Bool.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, date: Int, masterList: String, userId: String, add: Bool) {
        self.init(snapshot: ["__typename": "EasyGrocListItems", "name": name, "date": date, "masterList": masterList, "userID": userId, "add": add])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var masterList: String {
        get {
          return snapshot["masterList"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "masterList")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var add: Bool {
        get {
          return snapshot["add"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "add")
        }
      }
    }
  }
}

public final class OnCreateUserInfoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUserInfo {\n  onCreateUserInfo {\n    __typename\n    share_id\n    date\n    userID\n    verified\n    placeholder1\n    placeholder2\n    placeholder3\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUserInfo", type: .object(OnCreateUserInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUserInfo: OnCreateUserInfo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUserInfo": onCreateUserInfo.flatMap { $0.snapshot }])
    }

    public var onCreateUserInfo: OnCreateUserInfo? {
      get {
        return (snapshot["onCreateUserInfo"] as? Snapshot).flatMap { OnCreateUserInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUserInfo")
      }
    }

    public struct OnCreateUserInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["UserInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("share_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("verified", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("placeholder1", type: .scalar(String.self)),
        GraphQLField("placeholder2", type: .scalar(String.self)),
        GraphQLField("placeholder3", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: Int, date: Int, userId: String, verified: Bool, placeholder1: String? = nil, placeholder2: String? = nil, placeholder3: String? = nil) {
        self.init(snapshot: ["__typename": "UserInfo", "share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: Int {
        get {
          return snapshot["share_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "share_id")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var verified: Bool {
        get {
          return snapshot["verified"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "verified")
        }
      }

      public var placeholder1: String? {
        get {
          return snapshot["placeholder1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder1")
        }
      }

      public var placeholder2: String? {
        get {
          return snapshot["placeholder2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder2")
        }
      }

      public var placeholder3: String? {
        get {
          return snapshot["placeholder3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder3")
        }
      }
    }
  }
}

public final class OnUpdateUserInfoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUserInfo {\n  onUpdateUserInfo {\n    __typename\n    share_id\n    date\n    userID\n    verified\n    placeholder1\n    placeholder2\n    placeholder3\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUserInfo", type: .object(OnUpdateUserInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUserInfo: OnUpdateUserInfo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUserInfo": onUpdateUserInfo.flatMap { $0.snapshot }])
    }

    public var onUpdateUserInfo: OnUpdateUserInfo? {
      get {
        return (snapshot["onUpdateUserInfo"] as? Snapshot).flatMap { OnUpdateUserInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUserInfo")
      }
    }

    public struct OnUpdateUserInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["UserInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("share_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("verified", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("placeholder1", type: .scalar(String.self)),
        GraphQLField("placeholder2", type: .scalar(String.self)),
        GraphQLField("placeholder3", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: Int, date: Int, userId: String, verified: Bool, placeholder1: String? = nil, placeholder2: String? = nil, placeholder3: String? = nil) {
        self.init(snapshot: ["__typename": "UserInfo", "share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: Int {
        get {
          return snapshot["share_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "share_id")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var verified: Bool {
        get {
          return snapshot["verified"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "verified")
        }
      }

      public var placeholder1: String? {
        get {
          return snapshot["placeholder1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder1")
        }
      }

      public var placeholder2: String? {
        get {
          return snapshot["placeholder2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder2")
        }
      }

      public var placeholder3: String? {
        get {
          return snapshot["placeholder3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder3")
        }
      }
    }
  }
}

public final class OnDeleteUserInfoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUserInfo {\n  onDeleteUserInfo {\n    __typename\n    share_id\n    date\n    userID\n    verified\n    placeholder1\n    placeholder2\n    placeholder3\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUserInfo", type: .object(OnDeleteUserInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUserInfo: OnDeleteUserInfo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUserInfo": onDeleteUserInfo.flatMap { $0.snapshot }])
    }

    public var onDeleteUserInfo: OnDeleteUserInfo? {
      get {
        return (snapshot["onDeleteUserInfo"] as? Snapshot).flatMap { OnDeleteUserInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUserInfo")
      }
    }

    public struct OnDeleteUserInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["UserInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("share_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("verified", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("placeholder1", type: .scalar(String.self)),
        GraphQLField("placeholder2", type: .scalar(String.self)),
        GraphQLField("placeholder3", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: Int, date: Int, userId: String, verified: Bool, placeholder1: String? = nil, placeholder2: String? = nil, placeholder3: String? = nil) {
        self.init(snapshot: ["__typename": "UserInfo", "share_id": shareId, "date": date, "userID": userId, "verified": verified, "placeholder1": placeholder1, "placeholder2": placeholder2, "placeholder3": placeholder3])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: Int {
        get {
          return snapshot["share_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "share_id")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var verified: Bool {
        get {
          return snapshot["verified"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "verified")
        }
      }

      public var placeholder1: String? {
        get {
          return snapshot["placeholder1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder1")
        }
      }

      public var placeholder2: String? {
        get {
          return snapshot["placeholder2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder2")
        }
      }

      public var placeholder3: String? {
        get {
          return snapshot["placeholder3"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeholder3")
        }
      }
    }
  }
}

public final class OnCreateAccountLinkSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateAccountLink {\n  onCreateAccountLink {\n    __typename\n    code\n    date\n    userID\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateAccountLink", type: .object(OnCreateAccountLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateAccountLink: OnCreateAccountLink? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateAccountLink": onCreateAccountLink.flatMap { $0.snapshot }])
    }

    public var onCreateAccountLink: OnCreateAccountLink? {
      get {
        return (snapshot["onCreateAccountLink"] as? Snapshot).flatMap { OnCreateAccountLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateAccountLink")
      }
    }

    public struct OnCreateAccountLink: GraphQLSelectionSet {
      public static let possibleTypes = ["AccountLink"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("code", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(code: Int, date: Int, userId: String) {
        self.init(snapshot: ["__typename": "AccountLink", "code": code, "date": date, "userID": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var code: Int {
        get {
          return snapshot["code"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "code")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }
    }
  }
}

public final class OnUpdateAccountLinkSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateAccountLink {\n  onUpdateAccountLink {\n    __typename\n    code\n    date\n    userID\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateAccountLink", type: .object(OnUpdateAccountLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateAccountLink: OnUpdateAccountLink? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateAccountLink": onUpdateAccountLink.flatMap { $0.snapshot }])
    }

    public var onUpdateAccountLink: OnUpdateAccountLink? {
      get {
        return (snapshot["onUpdateAccountLink"] as? Snapshot).flatMap { OnUpdateAccountLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateAccountLink")
      }
    }

    public struct OnUpdateAccountLink: GraphQLSelectionSet {
      public static let possibleTypes = ["AccountLink"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("code", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(code: Int, date: Int, userId: String) {
        self.init(snapshot: ["__typename": "AccountLink", "code": code, "date": date, "userID": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var code: Int {
        get {
          return snapshot["code"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "code")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }
    }
  }
}

public final class OnDeleteAccountLinkSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteAccountLink {\n  onDeleteAccountLink {\n    __typename\n    code\n    date\n    userID\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteAccountLink", type: .object(OnDeleteAccountLink.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteAccountLink: OnDeleteAccountLink? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteAccountLink": onDeleteAccountLink.flatMap { $0.snapshot }])
    }

    public var onDeleteAccountLink: OnDeleteAccountLink? {
      get {
        return (snapshot["onDeleteAccountLink"] as? Snapshot).flatMap { OnDeleteAccountLink(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteAccountLink")
      }
    }

    public struct OnDeleteAccountLink: GraphQLSelectionSet {
      public static let possibleTypes = ["AccountLink"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("code", type: .nonNull(.scalar(Int.self))),
        GraphQLField("date", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(code: Int, date: Int, userId: String) {
        self.init(snapshot: ["__typename": "AccountLink", "code": code, "date": date, "userID": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var code: Int {
        get {
          return snapshot["code"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "code")
        }
      }

      public var date: Int {
        get {
          return snapshot["date"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }
    }
  }
}