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